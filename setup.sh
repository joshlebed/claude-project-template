#!/bin/bash

# Check if git is available and if we're in a git repository
if command -v git &> /dev/null && git rev-parse --git-dir &> /dev/null 2>&1; then
    # Check if .gitignore exists
    if [ -f .gitignore ]; then
        # Check if .project-docs-template is already in .gitignore
        if ! grep -q "^\.project-docs-template/?$" .gitignore; then
            echo ".project-docs-template/" >> .gitignore
            echo "Added .project-docs-template/ to .gitignore"
        else
            echo ".project-docs-template/ already in .gitignore"
        fi
    else
        # Create .gitignore with the entry
        echo ".project-docs-template/" > .gitignore
        echo "Created .gitignore with .project-docs-template/"
    fi
else
    echo "Note: Git not available or not in a git repository - .gitignore not modified"
fi