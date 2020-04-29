build:
	docker build . -t speedtest
	docker build . -f Dockerfile.transform -t transform