
## 📌 SQL Portfolio

Bem-vindo ao meu repositório de SQL Portfolio! Aqui você encontrará exemplos de consultas, explicações sobre conceitos essenciais e boas práticas para escrever SQL eficiente. Meu objetivo é compartilhar conhecimento e mostrar minhas habilidades por meio de consultas reais aplicadas a bancos de dados no SQLite.

## 📂 Estrutura do Repositório

🗂️ dataset/ → Contém os bancos de dados utilizados nos exemplos.

🗂️ SQL/ → Diretório principal com consultas organizadas.

```
📌 CTE/ → Exemplos de Common Table Expressions (CTEs).
📌 Joins/ → Exemplos práticos de junções entre tabelas.
📌 Funções_Agregadas/ → Exemplos de SUM, AVG, COUNT e outras funções essenciais.
```

🗂️ Script/ → Scripts para criação do banco de dados, inserção de dados e notebooks para explorar os dados.

### 🚀 O que você vai encontrar aqui?

✅ Consultas SQL para análise de dados

✅ Explicações sobre CTEs, Joins, Subqueries e mais

✅ Dicas de boas práticas e otimização

✅ Uso de SQLite para manipulação dos dados

### 📖 Exemplos de Conteúdo

🔹 Common Table Expressions (CTEs)

CTEs ajudam a estruturar consultas complexas de maneira mais legível e reutilizável.

``` sql
WITH vendas_cliente AS (
    SELECT cliente_id, SUM(valor) AS total_vendas
    FROM vendas
    GROUP BY cliente_id
)
SELECT cliente_id, total_vendas
FROM vendas_cliente
WHERE total_vendas > 1000;
```

🔹 Trabalhando com Joins
Exemplo de junção entre duas tabelas:

``` sql
SELECT c.nome, p.produto, v.valor
FROM clientes c
JOIN vendas v ON c.cliente_id = v.cliente_id
JOIN produtos p ON v.produto_id = p.produto_id;
```

### 📌 Como Rodar os Scripts

1 - Clone o repositório

``` bash
git clone https://github.com/seu-usuario/sql-portfolio.git
cd sql-portfolio
```

2 - Instale o SQLite (se ainda não tiver)

No Windows: Baixe SQLite

No Linux/Mac:

``` bash
sudo apt install sqlite3  # Debian/Ubuntu
brew install sqlite       # macOS
```

3 - Abra o banco e execute os scripts

``` bash
sqlite3 dataset/data.db < SQL/CTE/exemplo.sql
```

📬 Contato
Caso queira trocar ideias sobre SQL ou tenha alguma dúvida, me chame no :

  <a href="https://www.linkedin.com/in/caio-guimar%C3%A3ess/" target="_blank"><img src="https://img.shields.io/badge/-LinkedIn-%230077B5?style=for-the-badge&logo=linkedin&logoColor=white" target="_blank"></a> 