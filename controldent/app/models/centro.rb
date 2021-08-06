class Centro < ApplicationRecord
  belongs_to :cliente
  has_many :usuarios
  
  def id_nom
    "[#{id}] #{nombre}"
  end

  def iden
    "#{id}"
  end
end
