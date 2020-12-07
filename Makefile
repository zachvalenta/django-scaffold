.PHONY: test

base_url = "http://localhost:8000"

help:
	@echo
	@echo "=================================================="
	@echo
	@echo "🗄  DB"
	@echo
	@echo "create:     make migration"
	@echo "apply:      apply migration"
	@echo "drop:       drop sqlite db file"
	@echo
	@echo "🛠  UTILS"
	@echo
	@echo "env:        set env var"
	@echo "srv:        run dev server"
	@echo "hc:         GET healthcheck endpoint"
	@echo "test:       run tests"
	@echo "super:      create superuser"
	@echo "admin:      open admin in browser"
	@echo
	@echo "📦 DEPENDENCIES"
	@echo
	@echo "venv:       show Poetry environment info"
	@echo "deps:       list prod dependencies"
	@echo
	@echo "=================================================="
	@echo

#
# 🗄 DB
#

create:
	poetry run python manage.py makemigrations

apply:
	poetry run python manage.py migrate

super:
	echo "from django.contrib.auth.models import User; User.objects.create_superuser('admin', 'admin@admin.com', 'pass')" | poetry run python manage.py shell

#
# 🛠 UTILS
#

env:
	ln -sf .env.dev .env

srv:
	poetry run python manage.py runserver

hc:
	curl -w "\n" $(base_url)/healthcheck/

test:
	poetry run python manage.py test

admin:
	open $(base_url)/admin

drop:
	rm db.sqlite3

#
# 📦 DEPENDENCIES
#

venv:
	poetry env info

deps:
	poetry show --tree --no-dev
