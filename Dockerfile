FROM golang:1.13-alpine as builder

RUN apk update && apk add git

WORKDIR /usr/src/app
COPY . .

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o main .

FROM scratch

# /usr/src/app 디렉토리의 내용을 현재 위치(.)로 가져오기
COPY --from=builder /usr/src/app .

CMD ["/main"]