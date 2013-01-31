class Entry < ActiveRecord::Base
  attr_accessible :body, :title, :journal_id

  belongs_to :journal
end
