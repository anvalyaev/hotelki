protoc --dart_out=grpc:hotserver/lib/src/generated -Iprotos protos/hot.proto
protoc --dart_out=grpc:hotclient/lib/generated -Iprotos protos/hot.proto