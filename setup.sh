#!/bin/bash

# Create .agent-project-docs directory structure
mkdir -p .agent-project-docs/_templates

# Move template files into the _templates subdirectory
if [ -d "templates" ]; then
    cp -r templates/* .agent-project-docs/_templates/
    rm -rf templates
    echo "Created .agent-project-docs/_templates/ with documentation templates"
fi

# Check if git is available and if we're in a git repository
if command -v git &> /dev/null && git rev-parse --git-dir &> /dev/null 2>&1; then
    # Check if .gitignore exists
    if [ -f .gitignore ]; then
        # Check if .agent-project-docs is already in .gitignore
        if ! grep -q "^\.agent-project-docs/?$" .gitignore; then
            echo ".agent-project-docs/" >> .gitignore
            echo "Added .agent-project-docs/ to .gitignore"
        else
            echo ".agent-project-docs/ already in .gitignore"
        fi
    else
        # Create .gitignore with the entry
        echo ".agent-project-docs/" > .gitignore
        echo "Created .gitignore with .agent-project-docs/"
    fi
else
    echo "Note: Git not available or not in a git repository - .gitignore not modified"
fi
