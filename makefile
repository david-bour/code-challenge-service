container:
	docker build -t ccs:latest .

run: container
	docker run --name ccs -p 8000:8000 ccs:latest

charts:
	helm package ./chart/code-challenge-service

clean:
	docker stop $$(docker ps -aq) && \
	docker rm $$(docker ps -aq)