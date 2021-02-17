class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :comprador
      t.string :descricao
      t.decimal :preco, :precision => 10, :scale => 2
      t.decimal :quantidade, :precision => 10, :scale => 2
      t.string :endereco
      t.string :fornecedor

      t.timestamps
    end
  end
end
