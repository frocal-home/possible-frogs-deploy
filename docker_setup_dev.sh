#!/bin/bash

# Function to prompt the user for variable values
prompt_for_env_vars() {
  local env_file=$1
  local temp_file=$(mktemp)

  while IFS= read -r line; do
    if [[ $line == *=* ]]; then
      var_name=$(echo "$line" | cut -d '=' -f 1)
      echo -n "Enter value for $var_name: "
      read var_value
      echo "$var_name=$var_value" >> "$temp_file"
    else
      echo "$line" >> "$temp_file"
    fi
  done < "$env_file"

  mv "$temp_file" "$env_file"
}

# Function to find and process .env files
process_env_files() {
  local root_dir=$1
  find "$root_dir" -type f -name ".env" | while read -r env_file; do
    echo "Processing $env_file"
    prompt_for_env_vars "$env_file"
    
    local env_dir=$(dirname "$env_file")
    echo "Running docker-compose up -d in $env_dir"
    (cd "$env_dir" && docker-compose up -d)
  done
}

# Main script
echo -n "Enter the root directory: "
read root_directory

if [ -z "$root_directory" ]; then
  echo "No root directory provided. Exiting."
  exit 1
fi

process_env_files "$root_directory"

echo "All done!"
