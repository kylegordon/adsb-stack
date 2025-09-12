# GitHub Copilot Code Review Workflow

This repository is configured with automated GitHub Copilot code review for all pull requests.

## How it Works

When you submit a pull request, the workflow automatically:

1. **Detects changed files** - Analyzes which files have been modified
2. **Sets up Copilot integration** - Prepares the PR for Copilot review
3. **Posts instructions** - Adds a comment with guidance on using Copilot

## Using Copilot for Code Review

### Basic Commands
- `@copilot review` - Get a comprehensive code review
- `@copilot explain [filename]` - Understand specific file changes
- `@copilot suggest improvements` - Get optimization suggestions
- `@copilot security check` - Analyze for security issues

### Focus Areas for This Project
- **🐳 Docker Configuration**: Security and optimization of container configs
- **🔒 Security**: Environment variables, network configurations
- **📝 YAML Files**: Syntax validation and best practices
- **🛠️ Shell Scripts**: Safety, error handling, efficiency
- **📚 Documentation**: Clarity and completeness

## Workflow Files

- `.github/workflows/copilot-code-review.yml` - Main Copilot integration workflow
- `.github/workflows/copilot-enhanced-review.yml` - Enhanced version with AI analysis

## Requirements

- GitHub Copilot must be enabled for the repository
- Contributors should have access to GitHub Copilot features
- The workflow requires `pull-requests: write` permissions

## Customization

You can modify the workflow to:
- Change which file types trigger reviews
- Adjust the focus areas for your project type
- Customize the instruction messages
- Add additional validation steps

The workflow is designed to be minimal and focused on enabling Copilot's native capabilities rather than relying on external dependencies.