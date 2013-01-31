class Journal < ActiveRecord::Base
  attr_accessible :description, :name, :private, :user_id

  belongs_to :user
  has_many :entries
end
