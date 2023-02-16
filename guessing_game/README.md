# 数当てゲームまとめ

## Rust のコマンド

```shell
# コンパイル＆実行
rustc hello_world.rs
./hello_world

# プロジェクト作成
cargo new guessing_game
cd guessing_game

# 実行
cargo run
```

## Hello World

```rust
// src/main.rs

fn main() {
  println!("Hello, world!");
}
```

## prelude (標準ライブラリ)

```rust
// src/main.rs

use std::io;

fn main() {

}

```
