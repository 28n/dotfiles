# Config worker environment

This is the reusable Python environment for local configuration generators.

```sh
cd ~/.custom/python
source .venv/bin/activate
```

Use `uv add <package>` to add a runtime dependency, `uv add --dev <package>`
for development tools, and `uv run <command>` to run inside the environment
without activating it.
