#!/bin/sh

docker run --rm -v ${PWD}:/proto ezio1119/protoc \
-I/proto \
-I/go/src/github.com/envoyproxy/protoc-gen-validate \
--doc_out=. \
--doc_opt=markdown,README.md \
chat/chat.proto \
event/event.proto \
auth/auth.proto \
post/post.proto \
profile/profile.proto
