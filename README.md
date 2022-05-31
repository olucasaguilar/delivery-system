# Sistema de Entregas
## Sistema de entregas desenvolvido durante a 1ª etapa de treinamento do TreinaDev 8 (Campus Code).

Este projeto é de uma aplicação web responsável por gerencias meios de transporte disponíveis para e-commerces.

Foi desenvolvido em Ruby on Rails.

### Versões
- Ruby 3.0.0
- Rails 7.0.2.4

### Informações adicionais
- Utilizado gems [RSpec](https://github.com/rspec/rspec-rails) e [Capybara](https://github.com/teamcapybara/capybara) para realização de testes, e banco de dados SQLite.

## Executando o projeto
1. Clone o projeto
  ```
  git clone https://github.com/olucasaguilar/delivery-system.git
  ```
2. Entre na pasta e instale as dependências
  ```
  bundle install
  ```
3. Execute as migrações
  ```
  rails db:migrate
  ```
4. Adicione dados ao banco
  ```
  rails db:seed
  # Os dados podem ser acessados no arquivo db/seeds.rb
  ```
5. Inicie o servidor web
  ```
  rails server
  ```

## Executando os testes
  ```
  rspec
  ```

## Tabela de Planejamento
Criado utilizando Notion:

[Link externo (Notion)](https://aged-toque-5ce.notion.site/Tabela-de-Planejamento-452e2546f0494f1fac803f2e62b8be1e)