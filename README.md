# Banco de dados do projeto Câmara Deputados

## Adicionando a tabela despesas

### Windows

Por meio do prompt de comando vá até o repositório onde o MySQL está instalado, provavelmente `C:\>cd \MYSQL\Bin`. Você usa o comando `cd` para navegar entre pastas.
Uma vez na pasta de origem do MySQL `mysql -u root -p admin` e digite sua senha.

### Linux

Por meio do terminal inicie seu serviço de banco de dados usando system ctl `systemctl start nomeDoProgramaDeBancoDeDados`.
`mysql -p` sua senha de administrador do banco de dados.

### MySQL

Uma vez dentro do MySQL os comandos são os mesmos.

Tenha certeza que garantiu todos os privilégios para o usuário que está usando esse banco:

```
GRANT ALL PRIVILEGES ON nomeDoBancoDeDados TO 'nomeDoUsuario'@'localhost' 
    IDENTIFIED BY 'senhaDoUsuario' 
    WITH GRANT OPTION;
FLUSH PRIVILEGES;
```

Você precisa copiar o arquivo despesas2017.csv para algum lugar que o usuário que estiver usando o banco de dados tenha permissão de escrita/leitura.

```
LOAD DATA LOCAL INFILE 'endereçoOndeOcsvSeEncontra'
INTO TABLE nomeDoBancoDeDados.nomeDaTabela
FIELDS TERMINATED BY ';';
```