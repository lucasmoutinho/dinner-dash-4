class Order < ApplicationRecord
  belongs_to :user
  belongs_to :situation
  has_many :order_meals
  #se deixar isso vai excluir todos os pratos existente quando apagar um pedido?
  has_many :meals, through: :order_meals, dependent: :destroy
end
