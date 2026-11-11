default:
    @just --list

# client part (maybe?-_- )
run:
    cargo run --bin client

# just server part (for some big servers, here probably will be postgress instead of sqllite)
run-server:
    cargo run --bin server

# build of the whole stuff
build:
    cargo build --workspace --all-targets --locked

# all tests
test:
    cargo test --workspace --locked

# formatting and lint stuff
lint:
    cargo fmt --all -- --check
    cargo clippy --workspace --all-targets --locked -- -D warnings
