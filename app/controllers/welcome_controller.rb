class WelcomeController < ApplicationController
  def index
    @orders = Order.all
  end

  def bucket
    file = params[:files][0]
    File.readlines(file.path).each_with_index do |line, idx|
      if idx > 0
        order = Order.new
        line.split("\t").each_with_index do |l, i|
          puts "#{i} - #{l}"
          case i
          when 0
            order.comprador = l
          when 1
            order.descricao = l
          when 2
            order.preco = l
          when 3
            order.quantidade = l
          when 4
            order.endereco = l
          when 5
            order.fornecedor = l
          else
          end
        end
        if order.save!
          puts "registro incluido com sucesso !!!"
        end
      end
    end
    @orders = Order.all
    redirect_to root_path, success: 'Dados incluidos com sucesso !!!'
  end
end
