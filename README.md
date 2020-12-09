# what is this?

Scaffold for Django apps.

* project/app setup
* env var
* healthcheck
* testing
* docs (README, Makefile)

# where to start?

Use the `Makefile`:

|                       |                  |
|-----------------------|------------------|
| install dependencies  | `poetry install` |
| set env var           | `make env`       |
| apply migrations      | `make apply`     |
| run dev server        | `make srv`       |
| hit healthcheck       | `make hc`        |

Here's the full list of `Makefile` rules:

```Makefile
==================================================

🗄  DB

create:     make migration
apply:      apply migration
drop:       drop sqlite db file

🛠  UTILS

env:        set env var
srv:        run dev server
hc:         GET healthcheck endpoint
test:       run tests
super:      create superuser
admin:      open admin in browser

📦 DEPENDENCIES

venv:       show Poetry environment info
deps:       list prod dependencies

==================================================
```
