default:
    @just --list

# Запуск клиента (по умолчанию — default-member)
run:
    cargo run --bin client

# Запуск headless-сервера
run-server:
    cargo run --bin server

# Сборка всего workspace
build:
    cargo build --workspace --all-targets --locked

# Все тесты
test:
    cargo test --workspace --locked

# Форматирование и линты
lint:
    cargo fmt --all -- --check
    cargo clippy --workspace --all-targets --locked -- -D warnings
