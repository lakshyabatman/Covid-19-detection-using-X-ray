start:
	docker-compose up -d
	watchman-make -p '**/*.py' '**/*.html' -s 1 --run 'touch uwsgi-reload'
stop:
	docker-compose down
test:
	docker-compose up -d
	nose2 -v tests.index