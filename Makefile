.PHONY: elasticsearch java7 neo4j python debain clean-containers clean-images

debain:
	docker build --tag="bensentropy/debain" --rm debain/

elasticsearch:
	docker build --tag="bensentropy/elasticsearch" --rm elasticsearch/

java7:
	docker build --tag="bensentropy/java7" --rm java7/

neo4j:
	docker build --tag="bensentropy/neo4j" --rm neo4j/

python:
	docker build --tag="bensentropy/python" --rm python/

clean-containers:
	docker rm $(docker ps -a -q)

clean-images:
	docker rmi $(docker images | awk '/^<none>/ { print $3 }')
