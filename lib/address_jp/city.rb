module AddressJp
  class City < ApplicationModel
    data_file 'cities'

    attr_reader :id, :name, :prefecture_id
    belongs_to :prefecture

    def initialize(id:, name:, prefecture_id:)
      @id = id.to_i
      @prefecture_id = prefecture_id.to_i
      @name = name
    end
  end
end
