dev:
	docker-compose up -d
	export FLASK_ENV=development
	watchman-make -p '**/*.py' '**/*.html' -s 1 --run 'touch uwsgi-reload'
stop:
	docker-compose down
start:
	docker-compose build 
	flask run 