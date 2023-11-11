.PHONY: default clean

default: ./objs/http-gif-sls-writer

./objs/http-gif-sls-writer: *.go
	gofmt -w .
	go build -mod=vendor -o objs/http-gif-sls-writer .

clean:
	rm -f objs/*
