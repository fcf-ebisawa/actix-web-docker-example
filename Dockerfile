FROM rust:slim

RUN apt-get update && \
    apt-get install -y curl libssl-dev pkg-config build-essential

WORKDIR /app

COPY ./src ./src
COPY ./Cargo.toml ./Cargo.toml

RUN cargo build --release

CMD ["./target/release/actix-web-docker-example"]