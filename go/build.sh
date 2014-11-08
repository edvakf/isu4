#!/bin/bash

go get github.com/go-martini/martini
go get github.com/go-redis/redis
go get github.com/martini-contrib/render
go get github.com/kr/pretty
go get github.com/pmylund/go-cache
go get github.com/golang/groupcache
go build -o golang-webapp .
