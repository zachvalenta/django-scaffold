# what is this?

Scaffold for Django apps. Basic project setup + Makefile.

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
super:      create superuser
admin:      open admin in browser
drop:       drop sqlite db file

🛠  UTILS

srv:        run dev server
hc:         GET healthcheck endpoint

📦 DEPENDENCIES

venv:       show Poetry environment info
deps:       list prod dependencies

==================================================
```
