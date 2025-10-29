---
description: Creates a Pull Request with the Fintoc style
---

<user-instructions>
$ARGUMENTS
</user-instructions>

## Linear Issue

Use the Linear tools to interact with Linear.

PRs need to match a Linear issue. If the user specified a Linear issue to use, you should use that. If the user
mentions the issue already exists but doesn't mention which one it is, you should search for it. If the user
doesn't mention Linear at all, you should create a new Linear issue to use. Match the issue to the correct team
based on the code changes.

## Pull Request

Create the PR as a draft. Assign me (the CLI user) to the PR. Use the `gh` CLI to interact with GitHub.

## Title

The title of the PR should be brief, and should summarize the content of the PR. It should also start with the
id of the Linear issue (previously created/obtained) in brackets.
An example could be: `[TRNF-1234] Add on us transfer to Mx Transfer Service`

## Description

The body of the PR should be a brief explanation IN SPANISH that a human should be able to use as context
to then read the PR and evaluate the code critically, without missing information. It should be as brief
as possible while aiming to give the reviewer the tools it might need to review the PR appropriately.
You should use the following "template" for the body:

```md
## Contexto

## Qué hay de nuevo?

## Tests

## Consideraciones

## Rollback
¿Es seguro hacer rollback? Sí/No
¿Cuáles son los pasos para hacer rollback?
```

- DO NOT use additional sections.
- In the context section you should give general information that helps the reviewer to understand the work
done and the motivation behind it. Keep it simple if you do not have much context. Use the Linear issue (if it exists) for help in this section
- In what's new section you should write a checklist of the things implemented.
- In the considerations section you should specifiy technical information about decisions that where made in the PR.
- The rollback section should be filled only if executing a rollback might prove challenging for some reason (for example, a difficult data migration
that cannot easily be rollbacked). In those instances, the rollback section should be filled with the steps to rollback.
If the rollback is easy to do, just write that rollbacking is safe, no steps. Use the user instructions to enrich the
context (if present).
