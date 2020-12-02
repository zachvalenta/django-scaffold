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
	@echo "super:      create superuser"
	@echo "admin:      open admin in browser"
	@echo "drop:       drop sqlite db file"
	@echo
	@echo "🛠  UTILS"
	@echo
	@echo "srv:        run dev server"
	@echo "hc:         GET healthcheck endpoint"
	@echo "test:       run tests"
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

admin:
	open $(base_url)/admin

drop:
	rm db.sqlite3

#
# 🛠 UTILS
#

srv:
	poetry run python manage.py runserver

hc:
	curl -w "\n" $(base_url)/healthcheck/

test:
	poetry run python manage.py test

#
# 📦 DEPENDENCIES
#

venv:
	poetry env info

deps:
	poetry show --tree --no-dev
