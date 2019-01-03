protoc --dart_out=grpc:hotserver/lib/generated -Iprotos protos/hot.proto
protoc --dart_out=grpc:hotclient/lib/generated -Iprotos protos/hot.proto