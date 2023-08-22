git clone  https://github.com/HyprNetwork/go-ethereum.git
cd go-ethereum
make geth
cp build/bin/geth ../geth
cp target/release/libprecompiles.so ../target/release/libprecompiles.so
cd ..
rm -rf go-ethereum


