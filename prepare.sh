git clone -b update_crypto  git@github.com:HyprNetwork/go-ethereum.git
cd go-ethereum
make geth
cp build/bin/geth ../geth
directory="target/release/"
if [ ! -d "$directory" ]; then
    echo "目录不存在，正在创建..."
    mkdir -p "$directory"  # 使用 -p 选项可以创建多层嵌套目录
    echo "目录已创建"
else
    echo "目录已存在"
fi
if [[ $(uname) == "Linux" ]]; then
    cp target/release/libprecompiles.so ../target/release/libprecompiles.so
elif [[ $(uname) == "Darwin" ]]; then
   cp target/release/libprecompiles.dylib ../target/release/libprecompiles.dylib
fi
cd ..
rm -rf go-ethereum


