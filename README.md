# flask-docker-setup
Simple flask &amp; docker setup.

##Notes
For jenkins you can build a junit-type test file by specifying the `--junitxml=file.xml` flag.

##Jenkins Setup
	docker rm dok 2>/dev/null || true
	docker build -t dok .
	docker run --name=dok dok py.test --junitxml=result.xml tests/
	docker cp dok:/var/www/app/result.xml .
	docker rm dok
