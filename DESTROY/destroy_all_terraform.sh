#!/bin/bash

# Find all Terraform state files
state_files=$(find / -name "terraform.tfstate" 2>/dev/null)

# Loop through each directory containing a state file
for state_file in $state_files; do
  dir=$(dirname "$state_file")
  echo "Destroying resources in $dir..."
  cd "$dir" || continue
  terraform destroy -auto-approve
done

echo "All Terraform resources destroyed."

