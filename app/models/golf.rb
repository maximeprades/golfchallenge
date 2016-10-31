class Golf < ActiveRecord::Base
    include AlgoliaSearch

    self.table_name = :golfs
    validates :name, presence: true

    algoliasearch do
      attribute :name
    end

end
