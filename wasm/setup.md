```sh
brew tap kateinoigakukun/wasi-vfs https://github.com/kateinoigakukun/wasi-vfs.git
brew install kateinoigakukun/wasi-vfs/wasi-vfs

curl https://get.wasmer.io -sSfL | sh

curl -LO https://github.com/ruby/ruby.wasm/releases/latest/download/ruby-3_2-wasm32-unknown-wasi-full.tar.gz
tar xfz ruby-3_2-wasm32-unknown-wasi-full.tar.gz
mv 3_2-wasm32-unknown-wasi-full/usr/local/bin/ruby ruby.wasm

wasi-vfs pack ruby.wasm --mapdir /src::./src --mapdir /usr::./3_2-wasm32-unknown-wasi-full/usr -o hello.wasm

wasmer hello.wasm -- /src/hello.rb
> [2023-09-03 13:30:00]Hello, WASM Ruby!
```
