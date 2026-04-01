# Project management MCP server

stdio MCP server for verifying tooling around `project-management/`. Human workflow entry remains [`project-management/INDEX.md`](../project-management/INDEX.md).

## Run (editors / MCP clients)

Point your MCP config at Node with this package’s `server.mjs`:

```json
{
  "mcpServers": {
    "project-management": {
      "command": "node",
      "args": ["/absolute/path/to/repo/mcp-project-management/server.mjs"],
      "cwd": "/absolute/path/to/repo/mcp-project-management"
    }
  }
}
```

## Verify (US-005)

From this directory, after `npm install`:

```bash
npm run verify
```

This starts the server over stdio, calls `pm_ping` and `create_user_story_fixture`, and asserts a file is written under `.integration-test/` (gitignored).

## Tools

| Tool | Purpose |
|------|---------|
| `pm_ping` | Health check |
| `create_user_story_fixture` | Writes a minimal markdown file under `.integration-test/` for automated verification only |

## Dependencies

- Node 18+
- `npm install` in this folder
