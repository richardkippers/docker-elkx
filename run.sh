sudo docker stop elkx
sudo docker rm elkx

sudo docker build -t richardkippers/elkx .
sudo docker run \
	-p 5601:5601 -p 9200:9200 -p 5044:5044 -p 5043:5043\
	-it \
	--name elkx \
	-d richardkippers/elkx


