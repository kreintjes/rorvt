class Prevention < ActiveRecord::Base
  default_scope order(:id)

  validates :name, presence: true, uniqueness: true, length: { in: 3..30 }
end
