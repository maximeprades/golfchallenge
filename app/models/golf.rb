class Golf < ActiveRecord::Base
    self.table_name = :golfs
    validates :name, presence: true
end
