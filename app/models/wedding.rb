class Wedding < ActiveRecord::Base
  belongs_to :couple

  attr_accessible :bride_name, :couple_id, :groom_name, :story, :title
end
