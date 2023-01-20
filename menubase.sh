#!/bin/bash

# Function to create a new repository
create_repo() {
  echo "Please enter the repository name:"
  read repo_name
  echo "# ${repo_name}" >> README.md
  git init
  git add README.md
  echo "Please enter the commit message:"
  read commit_message
  git commit -m "${commit_message}"
  echo "Please enter the branch name:"
  read branch_name
  git branch -M ${branch_name}
  echo "Please enter the remote repository URL:"
  read remote_url
  git remote add origin ${remote_url}
  git push -u origin ${branch_name}
  echo "Repository ${repo_name} created!"
}

while true; do
  echo "Welcome to the Github menu!"
  echo "Please select an option:"
  echo "1) Create a new repository"
  echo "2) Exit"
  read option
  case $option in
    1) 
      create_repo
      ;;
    2) 
      exit
      ;;
    *) 
      echo "Invalid option"
      ;;
  esac
done
