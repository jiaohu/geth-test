export LD_LIBRARY_PATH=./target/release:$LD_LIBRARY_PATH

./geth --datadir gethdata init genesis.json

#start local eth
export LD_LIBRARY_PATH=./target/release:$LD_LIBRARY_PATH
nohup ./geth  --http  --http.corsdomain "*" --datadir "./gethdata" --networkid 1337 --http.port 8545 --http.addr "0.0.0.0" > gethdata/geth.log 2>&1 &
sleep 10
curl --location --request POST 'localhost:8545'  --header 'Content-Type: application/json'  --data-raw '{	"jsonrpc":"2.0",	"method":"eth_blockNumber",	"params":[],	"id":1337}'
sleep 10
curl --location --request POST 'localhost:8545'  --header 'Content-Type: application/json'  --data-raw '{	"jsonrpc":"2.0",	"method":"eth_blockNumber",	"params":[],	"id":1337}'

