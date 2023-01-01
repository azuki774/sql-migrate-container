FROM golang:1.19-bullseye as builder
LABEL description="sql-migrate-git"
COPY sql-migrate /root/sql-migrate
WORKDIR /root/sql-migrate
RUN go mod tidy && go mod vendor
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -a -tags "netgo" -installsuffix netgo -ldflags="-s -w -extldflags \"-static\"" -buildvcs=false -o /bin/ ./...

FROM alpine:3.16
COPY --from=builder /bin/sql-migrate /usr/local/bin/sql-migrate
