class Centro < ApplicationRecord
  belongs_to :cliente
  has_many :usuarios
  has_many :agenda
  
  def id_nom
    "[#{id}] #{nombre}"
  end

  def iden
    "#{id}"
  end
end
