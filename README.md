# what is this?

Scaffold for Django apps. Basic project setup + healthcheck, testing, Makefile.

# where to start?

* __install dependencies__: `poetry install`
* __apply migrations__: `make apply`
* __run dev server__: `make srv`
* __hit healthcheck endpoint__: `make srv`
* __everything else__: `make help`

```Makefile
==================================================

🗄  DB

create:     make migration
apply:      apply migration
drop:       drop sqlite db file

🛠  UTILS

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
