# Trabalho - INF325
[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/Equipe02-Unicamp/effective_store/master?urlpath=lab)

## Equipe 2

Nome   |
------------------------------------|
Caroline Augusti |
Felipe Emygdio de Salles | 
Gustavo Porto Guedes | 
Luan Neves da Silva |
Paulo Mellin Gimenes |
Thiago Natanael | 

## Tópicos
O tópico escolhido para abordar neste trabalho foi o `Catálogo de lojistas associados e produtos`.

## Banco de dados

Para o desenvolvimento das atividades, foi utilizado o seguinte banco de dados:
- **MongoDB** -> Ferramenta utilizada para armazenar os catálogos de produtos e fornecedores (Além de cadastro de clientes);

## Consultas

1. Lojistas com maior número de produtos disponíveis na plataforma
2. Produtos mais comuns entre os lojistas associados
3. Países com mais lojistas (Sellers)
4. Produtos com mais lojistas (Sellers) por região
5. Lista dos lojistas (Sellers) ordenada pelos mais novos
6. Lista dos lojistas (Sellers) ordenada pelos mais antigos
7. Lista das faturas que estão em aberto para os lojistas(Sellers) com menos de 1 ano de mercado
8. Lista das faturas acima de R$ 1000,00

## Setup

### Subindo ambiente
```shell
docker-compose up -d
```

### Encerrando ambiente
```shell
docker-compose down
```

### Quando há mudanças no Dockerfile da imagem do jupyter
```shell
docker-compose up -d --build
```

### Acessando o jupyter
```
http://localhost:8888/
```

### Executando o bash da imagem jupyter

```
docker exec -it jupyter /bin/bash
```

### Install npm library
```
docker exec -it jupyter npm install <LIB_NAME>
```

### Acessando o mongodb via Shell dentro do Jupiter
```
Em um terminal Shell no Jupiter ( $_ ) digite:
dfs
$ mongo

```

### Importando dados no shell no jupyter

```
$ mongoimport --db <NOME_DB> --collection <NOME_DA_COLLECTION> --drop --file <PATH_DO_JSON>
```