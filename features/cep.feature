# language: pt
Funcionalidade: CEP
  Os correios possuem uma API pública que retorna os detalhes de um endereço dado um determinado CEP. Essa API é usada por diversos sistemas para preenchimento de endereço, evitando que o usuário precise digitar todos os seus dados, pois os sistemas auto completam os dados baseado apenas no CEP fornecido.
  Os dados da API são:
  •	URL: http://correiosapi.apphb.com/cep/$CEP (substitua $CEP pelo CEP que desejar validar)
  •	Método: GET
  - •	Validar o uso da API com um CEP válido;
  - •	Validar o uso da API com CEP inválido.

  @teste @servico @positivo
  Cenário: Posso consultar com sucesso um CEP válido no serviço dos correios
    Dado que efetuo uma requisição com um "cep valido"
    Então valido se o serviço retornou os valores esperados

  @teste @servico @negativo
  Cenário: Posso consultar um cep inválido e receber retorno de endereço não encontrado do serviço dos correios
    Dado que efetuo uma requisição com um "cep invalido"
    Então valido se o serviço retornou mensagem endereço não encontrado
