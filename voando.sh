peer chaincode install -p github.com/boleto -n boleto -v 5

sleep 2

peer chaincode instantiate -n boleto -v 5 -c '{"Args":["init"]}' -C mychannel

sleep 15

peer chaincode invoke -n boleto -c '{"Args":["criarPessoa", "Renato", "Renato", "123456"]}' -C mychannel

sleep 2

peer chaincode invoke -n boleto -c '{"Args":["criarPessoa", "Bia", "Bia", "654321"]}' -C mychannel

sleep 2

peer chaincode invoke -n boleto -c '{"Args":["consultarPessoa", "Renato"]}' -C mychannel

sleep 2

peer chaincode invoke -n boleto -c '{"Args":["consultarPessoa", "Bia"]}' -C mychannel

sleep 2

peer chaincode invoke -n boleto -c '{"Args":["criarBanco", "bradesco", "bradesco","498723000111"]}' -C mychannel

sleep 2

peer chaincode invoke -n boleto -c '{"Args":["consultarBanco", "santander"]}' -C mychannel

sleep 2

peer chaincode invoke -n boleto -c '{"Args":["consultarBanco", "bradesco"]}' -C mychannel

sleep 2

peer chaincode invoke -n boleto -c '{"Args":["criarBoleto", "boleto1"]}' -C mychannel

sleep 2

peer chaincode invoke -n boleto -c '{"Args":["consultarBoleto", "boleto1"]}' -C mychannel

sleep 2

peer chaincode invoke -n boleto -c '{"Args":["registrarBoleto", "boleto1","bradesco","Renato","Bia","100"]}' -C mychannel

sleep 2

peer chaincode invoke -n boleto -c '{"Args":["consultarBoleto", "boleto1"]}' -C mychannel


