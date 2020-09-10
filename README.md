# Trabalho - INF325
[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/Equipe02-Unicamp/effective_store/master?urlpath=lab)
## Tópicos
Os tópicos escolhidos para abordar neste trabalho são:
- Catálogo de lojistas associados e produtos.
- Log de operações, acessos, etc.

## Banco de dados

Para o desenvolvimento das atividades foram selecionados 3 tipos de banco de dados diferentes:
- MongoDB -> Ferramenta utilizada para armazenar os catálogos de produtos e fornecedores (Além de cadastro de clientes);

## Consultas
1. Lojistas com maior número de produtos disponíveis na plataforma
2. Produtos mais comuns entre os lojistas associados
3. Países com mais logistas (Sellers)
4. Produtos com mais lojistas (Sellers) por região
5. Lista dos logistas (Sellers) ordenada pelos mais novos

## Descartadas (TODO Remover daqui)
1. Lojistas com mais produtos por tipo
2. Lojistas com produtos de determinado tipo por região

## Subindo ambiente
```shell
docker-compose up -d
```

## Encerrando ambiente
```shell
docker-compose down
```

## Quando há mudanças no Dockerfile da imagem do jupyter
```shell
docker-compose up -d --build
```

## Acessando o jupyter
```
http://localhost:8888/
```

## Executando o bash da imagem jupyter

```
docker exec -it jupyter /bin/bash
```

## Install npm dependencies
```
docker exec -it jupyter npm install
```

## Install npm library
```
docker exec -it jupyter npm install <LIB_NAME>
```

## Acessando o mongodb via Shell dentro do Jupiter
```
Em um terminal Shell no Jupiter ( $_ ) digite:
dfs
$ mongo

```

## Importando dados no shell no jupyter

```
$ mongoimport --db <NOME_DB> --collection <NOME_DA_COLLECTION> --drop --file <PATH_DO_JSON>
```
