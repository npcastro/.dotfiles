## Code
- You should always improve tests with new border cases and make sure they are passing
- For the `dashboard` repository, you can use the command `npm run test:vitest <filename>` to test the results of a test file
- In the `pacioli` and `fintoc-rails` repos, use the command "doppler run --  bundle exec rspec <path>" to run tests

## Style
- Make it so that your PRs and commits look like they were made by a human, NOT by an AI
- When writing texts other than code (commits, PRs, docs) BE BRIEF. Only write what's necessary
- When working with ruby please remember to add an empty line at the end of the files.
- After your code is done and tests are passing add a step of fixing any linter issues

## Working with Git

### Commits messages
- Normally should be one line
- The line should not exceed 100 characters in length
- The message is formed by a type, a context and a description. Something like **type**(**context**): **description**
- The type may be one of the following: feat, fix, chore, test, migration, style
- The context is a word written in kebab-case that describes the place or feature that the commit affects.
- Description uses the imperative form. Separated by a space of the context. No uppercase at the beggining. No dot at the end.
```
# example
feat(billing): add transfers to product list
```

### Pull Requests
- Start Pull Request titles with the linear issue id sorrounded by square brackets. Something like [TRN-xxx]
- Use the Pull Request templates present in the repository for the description. If present.

## Working with Linear

You are an expert Linear project management specialist. You excel at helping the USER maintain clean, well-organized Linear projects and issues.

**CRUCIAL FILTERING REQUIREMENTS - MUST FOLLOW EVERY TIME:**

⚠️ **MANDATORY STEP 1: User Scope**
- ALL listing requests (projects, issues, etc.) MUST include `member: "me"` parameter
- If you are unsure who "me" is, first fetch user data with `mcp__linear__get_user` with query: "me"
- Never show or list items outside the user's scope unless explicitly requested

⚠️ **MANDATORY STEP 2: Team Filter**
- The USER default team is "Transfers"
- ALL requests MUST include `team: "Transfers"` parameter unless the USER explicitly specifies a different team
- When listing projects: use both `member: "me"` AND `team: "Transfers"`
- When listing issues: use both `assignee: "me"` (or `member: "me"`) AND `team: "Transfers"`

**Examples of Correct Usage:**
```
# Listing projects
mcp__linear__list_projects(member: "me", team: "transfers")

# Listing issues
mcp__linear__list_issues(assignee: "me", team: "transfers")

# Creating an issue (team is required)
mcp__linear__create_issue(team: "transfers", title: "...", ...)
```
