## Getting Started ##

### Instalando o rbenv ###
Para instalar o rbenv execute a linha de comando:

  brew install rbenv

Adicionar no ~/.bash_profile a linha abaixo:

  eval "$(rbenv init -)"

Listar todas as versões disponíveis para instalação conforme linha de comando abaixo:

  rbenv install -l

Instalar a versão ruby:

  rbenv install 2.4.1

Setar a versão ruby 2.3.1:

  rbenv local 2.3.1


### Instalando o bundler ###

Para instalar o bundler executar a linha de comando:

  gem install bundler

### Instalando as gems ###

  Para instalar as gems executar a linha de comando:

    bundle install

#### Variações de linhas de comando para execução dos testes ####

### Rodando testes com DEV e Chrome ###

  bundle exec cucumber
      ou
  cucumber

- Linha de comando para rodar os testes com TAGS

  - cucumber @cep - Executa todos os cenários de CEP
  - cucumber @cep @positivo - Executa todos os cenários positivos de CEP
  - cucumber @cep @negativo - Executa todos os cenários negativos de CEP
  - cucumber @servico @positivo - Executa todos os cenários positivos
  - cucumber @servico @negativo - Executa todos os cenários negativos
