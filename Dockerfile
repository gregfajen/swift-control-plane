FROM swift:latest as builder
WORKDIR /root
COPY . .
# RUN ulimit -s 16384
# RUN getconf ARG_MAX
RUN apt update
RUN apt-get install -y libssl-dev libicu-dev
RUN swift build -c release

FROM swift:slim
WORKDIR /root
COPY --from=builder /root .
CMD [".build/x86_64-unknown-linux/release/docker-test"]
