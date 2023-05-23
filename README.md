# DOOM Emacs

...

## Dependencies

``` sh
brew tap homebrew/cask-fonts
brew install font-jetbrains-mono-nerd-font
```

## Troubleshooting

### parinfer (MacOS)

If the downloaded version does not work, instructions to build from source targeting emacs:

``` sh
git clone https://github.com/eraserhd/parinfer-rust.git
cd parinfer-rust
cargo build --release --features emacs
cp ./target/release/${file}.dylib ~/.emacs.d/parinfer-rust/${another-file}.so
```
