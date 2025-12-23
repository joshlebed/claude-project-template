# Agent Project Documentation Template

A collection of templates to help you document your projects for effective collaboration with Claude, GPT, and other AI code assistants.

## Quick Start

Run this one-liner in the root of your project directory:

```bash
git clone --depth 1 https://github.com/joshlebed/claude-project-template.git /tmp/claude-project-template && cp -r /tmp/claude-project-template/templates . && bash /tmp/claude-project-template/setup.sh && rm -rf /tmp/claude-project-template
```

## What This Does

1. Creates a `.agent-project-docs/` directory in your project root
2. Adds `_templates/` subdirectory with documentation templates
3. Automatically adds `.agent-project-docs/` to your `.gitignore`
4. Cleans up without leaving any other files

## Directory Structure

After installation, your project will have:

```
your-project/
└── .agent-project-docs/
    ├── _templates/                    # Template files (don't edit)
    │   ├── CODE_AGENT_QUICK_START.md
    │   ├── INDEX_TEMPLATE.md
    │   ├── NEXT_STEPS_TEMPLATE.md
    │   └── README.md
    ├── my-feature/                    # Your project docs go here
    │   ├── INDEX.md
    │   ├── PROGRESS.md
    │   └── NEXT_STEPS.md
    └── another-project/               # Multiple projects supported
        └── ...
```

## What's Included

The `_templates/` directory contains:

- **CODE_AGENT_QUICK_START.md** - Instructions for planning agents
- **INDEX_TEMPLATE.md** - Template for project quick-start guide
- **NEXT_STEPS_TEMPLATE.md** - Template for detailed task tracking
- **README.md** - Human guide for using the templates

## Usage

Tell your AI agent:

```
Create project documentation using the templates at @.agent-project-docs/_templates/
Name it and create @.agent-project-docs/<project-slug>/
```

## Manual Installation

If you prefer to manually set up:

1. Download or clone this repository
2. Copy the `templates` directory to your project
3. Run `bash setup.sh` in your project root
4. Or manually: `mkdir -p .agent-project-docs/_templates && mv templates/* .agent-project-docs/_templates/ && rmdir templates`

## License

MIT
