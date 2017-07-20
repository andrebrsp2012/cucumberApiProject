Dado(/^que efetuo uma requisição com um "([^"]*)"$/) do |cep|
  correios = CorreiosHttparty.new
  correios.efetua_requisicao_correios cep
end

Então(/^valido se o serviço retornou os valores esperados$/) do
  correios = CorreiosHttparty.new
  correios.valida_retorno_cep_valido
end

Então(/^valido se o serviço retornou mensagem endereço não encontrado$/) do
  correios = CorreiosHttparty.new
  correios.valida_retorno_cep_invalido
end
