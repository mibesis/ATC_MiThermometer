all:
	mkdir -p out
	podman run --rm -ti \
	-v $$(pwd):/code \
	-w /code \
	-e TEL_PATH=/opt/Telink_825X_SDK \
	skaldo/telink-sdk:0.1 \
	make

clean:
	podman run --rm -ti \
	-v $$(pwd):/code \
	-w /code \
	-e TEL_PATH=/opt/Telink_825X_SDK \
	skaldo/telink-sdk:0.1 \
	make clean
