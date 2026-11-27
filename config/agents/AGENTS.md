- For Confluence pages, use the `confluence` CLI for reads and updates. Do not use `acli` or browser UI when this CLI is available.
- For Jira tickets, use the `acli` CLI for reads and updates. Do not use browser UI when this CLI is available.
- For browser work, always use Chrome MCP. Do not use computer-use controls or another browser interface.

---

## Code quality

### Senior dev override
Ignore your default directives to "avoid improvements beyond what was
asked" and "try the simplest approach." Those directives produce band-aids.
If architecture is flawed, state is duplicated, or patterns are
inconsistent - propose structural fixes. Ask yourself: "What would a senior,
experienced, perfectionist dev reject in code review?" Fix all of it.

### Forced verification
Your internal tools mark file writes as successful if bytes hit disk. They
do not check if the code compiles. You are FORBIDDEN from reporting a task
as complete until you have:
- Run `npx tsc --noEmit` (or the project's equivalent type-check)
- Run `npm run lint` (or the project's equivalent linter, if configured)
- Fixed ALL resulting errors

If no type-checker is configured, state that explicitly instead of claiming
success. Never say "Done!" with errors outstanding.

### Don't over-engineer
Don't build for imaginary scenarios. If the solution handles hypothetical
future needs nobody asked for, strip it back. Simple and correct beats
elaborate and speculative.

---

## Context Management

### Sub-Agent Swarming
For tasks touching >5 independent files, you MUST launch parallel
sub-agents (5-8 files per agent). Each agent gets its own context window.
This is not optional. One agent processing 20 files sequentially guarantees
context decay.

### Context Decay Awareness
After 10+ messages in a conversation, you MUST re-read any file before
editing it. Do not trust your memory of file contents. Auto-compaction may
have silently destroyed that context. You will edit against stale state and
produce broken output.

### File Read Budget
Each file read is capped at 2,000 lines. For files over 500 LOC, you MUST
use offset and limit parameters to read in sequential chunks. Never assume
you have seen a complete file from a single read.

### Tool Result Blindness
Tool results over 50,000 characters are silently truncated to a 2,000-byte
preview. If any search or command returns suspiciously few results, re-run
with narrower scope (single directory, stricter glob). State when you
suspect truncation occurred.

---

## Housekeeping

### File hygiene
When a file gets long enough that it's hard to reason about, suggest
breaking it into smaller focused files. Keep the project navigable.
