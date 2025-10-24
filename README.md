# Claude Project Template

A collection of templates to help you document your projects for effective collaboration with Claude and other AI code assistants.

## Quick Start

Run this one-liner in the root of your project directory to copy the documentation templates:

```bash
git clone --depth 1 https://github.com/joshlebed/claude-project-template.git /tmp/claude-project-template && cp -r /tmp/claude-project-template/.project-docs-template . && bash /tmp/claude-project-template/setup.sh && rm -rf /tmp/claude-project-template
```

## What This Does

1. Copies the `.project-docs-template` directory to your project
2. Automatically adds `.project-docs-template/` to your `.gitignore` (if git is available)
3. Cleans up without leaving any other files or residue in your project

## What's Included

The `.project-docs-template` directory contains:
- **CODE_AGENT_QUICK_START.md** - Quick reference for using Claude effectively
- **INDEX_TEMPLATE.md** - Template for documenting your project structure
- **NEXT_STEPS_TEMPLATE.md** - Template for tracking project roadmap and tasks
- **README.md** - Overview of all the templates and how to use them

## Manual Installation

If you prefer to manually copy the files:

1. Download or clone this repository
2. Copy the `.project-docs-template` directory to your project root
3. Add `.project-docs-template/` to your `.gitignore`

## License

MIT