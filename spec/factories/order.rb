FactoryBot.define do
  factory :order do
    comprador { "sample" }
    descricao { "sample" }
    preco { 10.0 }
    quantidade { 2.0 }
    endereco { "rua quase chegando, 10 " }
    fornecedor { "burger king " }
  end
end
