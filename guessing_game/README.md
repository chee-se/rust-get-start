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

# ビルド
cargo build

# 依存クレートのドキュメントをビルド＆ブラウザで開く
cargo doc --open
```

## Hello World

```rust
// src/main.rs

fn main() {
  println!("Hello, world!");
}
```

## 変数と参照

```rust

fn main() {
  // immutable
  let constant = String::new();

  // mutable
  let mut variable = "literal";

  // type annotation(unsigned int)
  let num: u32 = 5;

  // immutable ref
  &constant;

  // mutable ref(usable for mutable variable only)
  &mut variable;
}
```

## prelude (標準ライブラリ)とクレート

```toml
# Cargo.toml
[dependencies]
rand = "0.8.3"
```

```rust
// src/main.rs

use rand::Rng;
use std::io;

fn main() {

  let secret_number = rand::thread_rng().gen_range(1..101);

  let mut input = String::new();

  io::stdin()
    .read_line(&mut input)
    .expect("Failed");

  println!("input = {}", input);
}

```

## match, enum 型（Result）, エラー処理

```rust
// main.rs

use rand::Rng;
use std::cmp::Ordering;
use std::io;

fn main() {
    println!("Guess the number!");

    let secret_number = rand::thread_rng().gen_range(1..101);

    loop {
        println!("Please input your guess.");

        let mut guess = String::new();

        io::stdin()
            .read_line(&mut guess)
            .expect("Failed to read line");

        let guess: u32 = match guess.trim().parse() {
            Ok(num) => num,
            Err(_) => continue,
        };

        println!("You guessed: {}", guess);

        match guess.cmp(&secret_number) {
            Ordering::Less => println!("Too small!"),
            Ordering::Greater => println!("Too big!"),
            Ordering::Equal => {
                println!("You win!");
                break;
            }
        }
    }
}
```
