class Category < ActiveRecord::Base
  default_scope order(:id)

  belongs_to :parent, class_name: 'Category'

  validates :name, presence: true, uniqueness: true, length: { in: 3..30 }
  validates_each :parent do |record, attr, value|
    record.errors.add(attr, 'may not be this object itself') if value == record
  end

  def parents
    if self.parent.present?
      parent.parents + [parent]
    else
      []
    end
  end
end
