<p align="center">
  <img src="https://user-images.githubusercontent.com/46378210/81453266-7ccdbc80-915f-11ea-9b07-fdfb166e60bd.png" alt="Titulo do Projeto"/>
</p>

<p align="center">
  <img src="https://img.shields.io/apm/l/vim-mode?color=green&label=license&logo=license&logoColor=green&style=for-the-badge"/>
  <img src="http://img.shields.io/static/v1?label=Ruby&message=3.1.2&color=red&style=for-the-badge&logo=ruby"/>
  <img src="http://img.shields.io/static/v1?label=Ruby%20On%20Rails%20&message=7.0.2&color=red&style=for-the-badge&logo=ruby"/>
  <img src="http://img.shields.io/static/v1?label=TESTES&message=%3E200&color=GREEN&style=for-the-badge"/>
</p>

:memo: Planejamento das atividades no [Trello](https://trello.com/b/sdJc3alw/tarefas-headhunters-treina-dev) 

:memo: Planejamento das [views](https://github.com/reginadiana/headhunters/blob/master/views.md)

:memo: Planejamento do [database](https://github.com/reginadiana/headhunters/blob/master/database.md)

:memo: Planejamento do [layout](https://github.com/reginadiana/headhunters/blob/master/layout.md)

## Lista de Conteúdos

:small_orange_diamond: [Descrição do Projeto](#descrição-do-projeto)

:small_orange_diamond: [Funcionalidades](#funcionalidades)

:small_orange_diamond: [Gems instaladas](#gems-instaladas)

:small_orange_diamond: [Pré-requisitos](#pré-requisitos-package)

:small_orange_diamond: [Configurações](#configurações)

:small_orange_diamond: [Rodando a aplicação](#rodando-a-aplicação-arrow_forward)

:small_orange_diamond: [Rodando os testes](#rodando-os-testes-memo)

:small_orange_diamond: [Casos de Uso](#casos-de-uso-busts_in_silhouette)

:small_orange_diamond: [Database](#database-floppy_disk)

:small_orange_diamond: [Rotas](#rotas)

:small_orange_diamond: [Resolvendo Problemas](#resolvendo-problemas-exclamation)

:small_orange_diamond: [Licença](#licença-trident)

## Descrição do projeto 

<p align="justify">
  O projeto é uma plataforma com foco em <strong>vagas de emprego</strong> para que recrutadores publiquem e recebam instrições, assim como candidatos possam buscar e se canditadar a elas.
</p>

## Funcionalidades

Os **headhunters** (recrutadores) podem: 

:heavy_check_mark: Criar uma conta e uma vaga

:heavy_check_mark: Ver os inscritos em uma vaga

:heavy_check_mark: Escrever comentarios no perfil dos candidatos cadastrados a vaga  

:heavy_check_mark: Marcar perfis como destaque

:heavy_check_mark: Rejeitar perfils mandando um feedback

:heavy_check_mark: Enviar proposta para o perfil

:heavy_check_mark: Receber proposta do candidato 

:heavy_check_mark: Buscar por candidatos a partir do nome ou profissão

:heavy_check_mark: Encerrar as inscrições para uma vaga

Os **candidatos** podem: 

:heavy_check_mark: Criar uma conta 

:heavy_check_mark: Completar o seu perfil

:heavy_check_mark: Buscar por vagas a partir do titulo ou skills requeridas 

:heavy_check_mark: Se inscrever em uma vaga

:heavy_check_mark: Receber feedbacks negativos

:heavy_check_mark: Receber propostas de handhunterss

:heavy_check_mark: Aceitar e rejeitar propostas

## Deploy com Heroku 

> https://headhuntersjobs.herokuapp.com/

## Techs

:bookmark: Ruby on Rails

:bookmark: [I18n](https://guides.rubyonrails.org/i18n.html) 

## Gems instaladas

:books: [**Devise**](https://github.com/heartcombo/devise) para autenticação de usuários (recrutadores e candidatos)

:books: [**RSpec**](https://github.com/rspec/rspec-rails) para escrever e executar testes unitários, isto é, de baixo nível 

:books: [**Capybara**](https://github.com/teamcapybara/capybara) para escrever e executar testes de integração, isto é, de alto nível

:books: [**Factory Bot Rails**](https://github.com/thoughtbot/factory_bot_rails) para otimizar a escrita de testes

:books: [**SimpleCov**](https://github.com/colszowka/simplecov) para  gerar relatórios referentes a cobertura de testes

## Pré-requisitos :package:

Algumas instalações serão necessárias antes de iniciar o projeto. 

:warning: [Ruby](https://www.ruby-lang.org/pt/documentation/installation/) versão >=2.6.3

:warning: [Ruby on Rails](https://guides.rubyonrails.org/getting_started.html) versão >=6.0.2.2

:warning: [Node](https://nodejs.org/en/download/) versão >=10.13.0

:warning: [Gem](https://rubygems.org/pages/download?locale=pt-BR) versão >=3.1.2

:warning: [Bundle](https://bundler.io/man/bundle-install.1.html) versão >=2.1.2

:warning: [Yarn](https://classic.yarnpkg.com/pt-BR/docs/install/#windows-stable) versão >=1.22.4 

:warning: [Docker](https://docs.docker.com/engine/install/ubuntu/)

## Configurações

### Iniciando/Configurando banco de dados

No terminal, clone o projeto: 

```
git clone https://github.com/reginadiana/headhunters
```
Entre na pasta
```
cd headhunters
```

Agora vamos rodar a aplicação com Docker:

`docker-compose build`

`docker-compose run --service-ports web bash`

Um novo terminal irá abrir, então, execute:

```
$ rails s -b 0.0.0.0
```

> Depois, acesse http://localhost:3000 para ver a aplicação

## Casos de Uso :busts_in_silhouette:

Alguns candidatos, recrutadores e outros objetos já estão configurados na aplicação e foram criados no arquivo [bin/seeds.rb](https://github.com/reginadiana/headhunters/blob/master/db/seeds.rb).

### Acessando a plataforma como candidato 

```ruby 
user_a = User.create!(email: 'camila@outlook.com.br', password: '123456')
```

### Acessando a plataforma como recrutador
```ruby 
headhunter_a = Headhunter.create!(email: 'lucas22@outlook.com.br', password: '111111')
```

## Rodando os testes :memo:

```
$ rspec or bundle exec rspec
```

## Database :floppy_disk:

O banco de dados utilizado nesta aplicação foi o [PostgreSQL](https://guides.rubyonrails.org/active_record_postgresql.html). O banco foipreparado com o comando ``` bin/setup ```

## Rotas

Para ver as rotas disponíveis na aplicação, execute: 

```
$ rails routes -g <name of controller>
```
## Licença :trident:

The [MIT License](https://github.com/reginadiana/headhunters/blob/master/LICENSE) (MIT)

Copyright :copyright: 2022 HandHunters
<br/>
<img src="https://badges.frapsoft.com/os/v1/open-source.svg?v=102"/>
