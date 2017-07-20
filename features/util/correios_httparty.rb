class CorreiosHttparty
  include HTTParty

  def efetua_requisicao_correios cep
    cep_number = CEP[cep.gsub(' ', '_').to_sym]
    $endereco = HTTParty.get "http://correiosapi.apphb.com/cep/#{cep_number[:cep]}"

  end

  def valida_retorno_cep_valido
    compara_dados "CEP", $endereco["cep"], CEP[:cep_valido][:cep]
    compara_dados "CEP", $endereco["tipoDeLogradouro"], CEP[:cep_valido][:tipo_de_logradouro]
    compara_dados "CEP", $endereco["logradouro"], CEP[:cep_valido][:logradouro]
    compara_dados "CEP", $endereco["bairro"], CEP[:cep_valido][:bairro]
    compara_dados "CEP", $endereco["cidade"], CEP[:cep_valido][:cidade]
    compara_dados "CEP", $endereco["estado"],  CEP[:cep_valido][:estado]
  end

  def valida_retorno_cep_invalido
    compara_dados "CEP", $endereco["message"], CEP[:cep_invalido][:message]
  end

  def compara_dados campo, esperado, retornado
    fail "Falha - Foi encontrada uma diferença para o campo #{campo} era esperado o valor '#{esperado}', foi retornado o valor #{retornado}" unless
       esperado.eql?(retornado)
  end

end
