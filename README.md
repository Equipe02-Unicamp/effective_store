# Trabalho - INF325
[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/Equipe02-Unicamp/effective_store/master)
## Tópicos
Os tópicos escolhidos para abordar neste trabalho são:
- Catálogo de lojistas associados e produtos.
- Log de operações, acessos, etc.

## Banco de dados

Para o desenvolvimento das atividades foram selecionados 3 tipos de banco de dados diferentes:
- MongoDB -> Ferramenta utilizada para armazenar os catálogos de produtos e fornecedores (Além de cadastro de clientes);
### Nice2Have
- NEO4J -> Ferramenta que será utilizada para montar uma rede de fornecedores;
- InfluxDB -> Ferramenta que será utilizada para gravar os logs e possivelmente reproduzi-los dentro de um ambiente de validação.


## Consultas
1. Lojistas com maior número de produtos disponíveis na plataforma
2. Produtos mais comuns entre os lojistas associados
3. Lojistas com mais produtos por tipo
4. Produtos com mais lojistas por região
5. Lojistas com produtos de determinado tipo por região

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

## Acessando o mongodb via Shell dentro do Jupiter
```
Em um terminal Shell no Jupiter ( $_ ) digite:

$ mongo "mongodb://mongo:27017"

```

## Importando dados no shell no jupyter

```
$ mongoimport -h "mongo:27017" --db <NOME_DB> --collection <NOME_DA_COLLECTION> --drop --file <PATH_DO_JSON>
```

## Referência para gerar dados
https://pypi.org/project/lorem-text/
