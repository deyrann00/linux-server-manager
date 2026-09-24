# Enterprise Linux Server Management

## Project Purpose
Automate regular Linux system maintenance tasks and establish standardized troubleshooting and configuration protocols.

## Repository Structure
- docs/
  - configuration.md: Server baseline hardening rules
  - installation/install.md: Setup and dependency instructions
  - troubleshooting/: Diagnostic steps for disk and network issues
- scripts/
  - monitor.sh: System load and disk utilization monitor
  - user_audit.sh: Account security and UID audit tool

## Development Workflow & Branching Strategy
- Branching: GitHub Flow with protected main branch.
- Feature Isolation: All features developed via feature/<feature-name> branches.
- Commits: Conventional Commits specification (feat, fix, docs, refactor, chore).
- Code Review: Mandatory PR review checking functionality, security, and test runs.

## Conflict Resolution & Recovery Policy
- Merge Conflicts: Manually investigated and resolved by reconciling branch diffs.
- Rollbacks: History-preserving rollbacks via git revert to keep audit trails intact.
