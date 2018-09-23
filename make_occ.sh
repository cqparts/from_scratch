#!/bin/sh
docker run -it --mount src="$(pwd)/data",target=/opt/output,type=bind  zignig/cqparts-builder
