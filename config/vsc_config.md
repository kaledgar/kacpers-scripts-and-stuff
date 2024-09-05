
## Formatting SQL

SQLfluff is great for formatting SQL

```bash
# installation
pip install sqlfluff

# check version
sqlfluff version
which sqlfluff
```

Formatting

```bash
sqlfuff lint "filepath.sql"
sqlfuff parse "filepath.sql"
sqlfuff fix "filepath.sql"
```

## VSC settings

```json
{
    "python.defaultInterpreterPath": "/usr/bin/python3",
    "python.testing.pytestEnabled": true,
    "python.testing.unittestEnabled": false,
    "python.testing.pytestArgs": [
        "."
    ],
    "python.envFile": "${workspaceFolder}/.env",
    "python.linting.enabled": true,
    "python.linting.pylintEnabled": true,
    "editor.fontSize": 15,
    "editor.formatOnSave": true,
    "[python]": {
        "editor.formatOnType": true,
        "editor.defaultFormatter": "ms-python.black-formatter"
    },
    "sqlfluff.config": ".sqlfluff",
    "sqlfluff.executablePath": "sqlfluff_path"
}
```