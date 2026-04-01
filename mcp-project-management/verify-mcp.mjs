import { Client } from '@modelcontextprotocol/sdk/client/index.js';
import { StdioClientTransport } from '@modelcontextprotocol/sdk/client/stdio.js';
import fs from 'node:fs/promises';
import path from 'node:path';
import { fileURLToPath } from 'node:url';

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const serverScript = path.join(__dirname, 'server.mjs');
const integrationDir = path.join(__dirname, '.integration-test');

await fs.rm(integrationDir, { recursive: true, force: true });

const transport = new StdioClientTransport({
  command: process.execPath,
  args: [serverScript],
  cwd: __dirname
});

const client = new Client({ name: 'pm-verify', version: '1.0.0' });
await client.connect(transport);

const tools = await client.listTools();
const names = tools.tools.map((t) => t.name);
if (!names.includes('pm_ping') || !names.includes('create_user_story_fixture')) {
  console.error('Expected tools missing:', names);
  process.exit(1);
}

const ping = await client.callTool({ name: 'pm_ping', arguments: {} });
const pingText = ping.content?.find((c) => c.type === 'text')?.text;
if (!pingText?.includes('ok')) {
  console.error('Unexpected pm_ping result:', ping);
  process.exit(1);
}

const slug = `verify-${Date.now()}`;
const create = await client.callTool({
  name: 'create_user_story_fixture',
  arguments: { slug, title: 'MCP integration verification' }
});
const createText = create.content?.find((c) => c.type === 'text')?.text;
const { path: written } = JSON.parse(createText);
await fs.access(written);

await client.close();

console.log('US-005 MCP verification passed:', written);
