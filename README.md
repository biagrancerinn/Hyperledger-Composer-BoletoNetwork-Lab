 
 # Hyperledger Composer Boleto 
 
 Beatriz Rinn
 Renato Puga
 
 
 ```bash
 cd ~/fabric-samples/basic-network
 
 docker kill $(docker ps -q)
 docker rm -f $(docker ps -a -q)
 ./start.sh 
 docker-compose -f docker-compose.yml up -d cli
 docker exec -it cli bash 
 cd /opt/gopath/src/github.com
 sh boleto/voando.sh
```

# Resultados Desejados

```bash
sh boleto/bala.sh 
2019-12-04 01:59:04.714 UTC [chaincodeCmd] checkChaincodeCmdParams -> INFO 001 Using default escc
2019-12-04 01:59:04.715 UTC [chaincodeCmd] checkChaincodeCmdParams -> INFO 002 Using default vscc
2019-12-04 01:59:04.906 UTC [chaincodeCmd] install -> INFO 003 Installed remotely response:<status:200 payload:"OK" > 
2019-12-04 01:59:06.992 UTC [chaincodeCmd] InitCmdFactory -> INFO 001 Retrieved channel (mychannel) orderer endpoint: orderer.example.com:7050
2019-12-04 01:59:06.994 UTC [chaincodeCmd] checkChaincodeCmdParams -> INFO 002 Using default escc
2019-12-04 01:59:06.994 UTC [chaincodeCmd] checkChaincodeCmdParams -> INFO 003 Using default vscc
2019-12-04 01:59:50.733 UTC [chaincodeCmd] InitCmdFactory -> INFO 001 Retrieved channel (mychannel) orderer endpoint: orderer.example.com:7050
2019-12-04 01:59:50.739 UTC [chaincodeCmd] chaincodeInvokeOrQuery -> INFO 002 Chaincode invoke successful. result: status:200 
2019-12-04 01:59:52.858 UTC [chaincodeCmd] InitCmdFactory -> INFO 001 Retrieved channel (mychannel) orderer endpoint: orderer.example.com:7050
2019-12-04 01:59:52.863 UTC [chaincodeCmd] chaincodeInvokeOrQuery -> INFO 002 Chaincode invoke successful. result: status:200 
2019-12-04 01:59:54.974 UTC [chaincodeCmd] InitCmdFactory -> INFO 001 Retrieved channel (mychannel) orderer endpoint: orderer.example.com:7050
2019-12-04 01:59:54.981 UTC [chaincodeCmd] chaincodeInvokeOrQuery -> INFO 002 Chaincode invoke successful. result: status:200 payload:"[{\"Key\":\"Renato\", \"Record\":{\"cpf\":\"123456\",\"nome\":\"Renato\",\"pessoaId\":\"Renato\"}}]" 
2019-12-04 01:59:57.085 UTC [chaincodeCmd] InitCmdFactory -> INFO 001 Retrieved channel (mychannel) orderer endpoint: orderer.example.com:7050
2019-12-04 01:59:57.092 UTC [chaincodeCmd] chaincodeInvokeOrQuery -> INFO 002 Chaincode invoke successful. result: status:200 payload:"[{\"Key\":\"Bia\", \"Record\":{\"cpf\":\"654321\",\"nome\":\"Bia\",\"pessoaId\":\"Bia\"}}]" 
2019-12-04 01:59:59.187 UTC [chaincodeCmd] InitCmdFactory -> INFO 001 Retrieved channel (mychannel) orderer endpoint: orderer.example.com:7050
2019-12-04 01:59:59.192 UTC [chaincodeCmd] chaincodeInvokeOrQuery -> INFO 002 Chaincode invoke successful. result: status:200 
2019-12-04 02:00:01.291 UTC [chaincodeCmd] InitCmdFactory -> INFO 001 Retrieved channel (mychannel) orderer endpoint: orderer.example.com:7050
Error: endorsement failure during invoke. response: status:500 message:"unexpected end of JSON input" 
2019-12-04 02:00:03.351 UTC [chaincodeCmd] InitCmdFactory -> INFO 001 Retrieved channel (mychannel) orderer endpoint: orderer.example.com:7050
2019-12-04 02:00:03.360 UTC [chaincodeCmd] chaincodeInvokeOrQuery -> INFO 002 Chaincode invoke successful. result: status:200 payload:"[{\"Key\":\"bradesco\", \"Record\":{\"bancoId\":\"bradesco\",\"cnpj\":\"498723000111\",\"nome\":\"bradesco\"}}]" 
2019-12-04 02:00:05.442 UTC [chaincodeCmd] InitCmdFactory -> INFO 001 Retrieved channel (mychannel) orderer endpoint: orderer.example.com:7050
2019-12-04 02:00:05.448 UTC [chaincodeCmd] chaincodeInvokeOrQuery -> INFO 002 Chaincode invoke successful. result: status:200 
2019-12-04 02:00:07.521 UTC [chaincodeCmd] InitCmdFactory -> INFO 001 Retrieved channel (mychannel) orderer endpoint: orderer.example.com:7050
2019-12-04 02:00:07.528 UTC [chaincodeCmd] chaincodeInvokeOrQuery -> INFO 002 Chaincode invoke successful. result: status:200 payload:"[{\"Key\":\"boleto1\", \"Record\":{\"beneficiario\":null,\"boletoId\":\"boleto1\",\"codigoBarra\":\"\",\"datavencimento\":\"\",\"ifBeneficiario\":null,\"ifPagadora\":null,\"pagador\":null,\"status\":\"PENDENTE\",\"valor\":\"\"}}]" 
2019-12-04 02:00:09.591 UTC [chaincodeCmd] InitCmdFactory -> INFO 001 Retrieved channel (mychannel) orderer endpoint: orderer.example.com:7050
2019-12-04 02:00:09.608 UTC [chaincodeCmd] chaincodeInvokeOrQuery -> INFO 002 Chaincode invoke successful. result: status:200 
2019-12-04 02:00:11.697 UTC [chaincodeCmd] InitCmdFactory -> INFO 001 Retrieved channel (mychannel) orderer endpoint: orderer.example.com:7050
2019-12-04 02:00:11.705 UTC [chaincodeCmd] chaincodeInvokeOrQuery -> INFO 002 Chaincode invoke successful. result: status:200 payload:"[{\"Key\":\"boleto1\", \"Record\":{\"beneficiario\":{\"cpf\":\"123456\",\"nome\":\"Renato\",\"pessoaId\":\"Renato\"},\"boletoId\":\"boleto1\",\"codigoBarra\":\"\357\277\275\",\"datavencimento\":\"04/12/2019\",\"ifBeneficiario\":{\"bancoId\":\"bradesco\",\"cnpj\":\"498723000111\",\"nome\":\"bradesco\"},\"ifPagadora\":null,\"pagador\":{\"cpf\":\"654321\",\"nome\":\"Bia\",\"pessoaId\":\"Bia\"},\"status\":\"PENDENTE\",\"valor\":\"100\"}}]" 
```
