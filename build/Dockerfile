FROM golang:1.19-bullseye as builder
LABEL description="sql-migrate-git"
COPY sql-migrate /root/sql-migrate
WORKDIR /root/sql-migrate
RUN go mod tidy && go mod vendor
RUN go build -a -tags "netgo" -installsuffix netgo -ldflags="-s -w -extldflags \"-static\"" -buildvcs=false -o /bin/ ./...

FROM ubuntu:latest
COPY --from=builder /bin/sql-migrate /usr/local/bin/sql-migrate
RUN apt-get update && \
    apt-get install -y git && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lits
RUN chmod +x /usr/local/bin/sql-migrate
COPY scripts /scripts/
ENTRYPOINT ["/scripts/main.sh"]
