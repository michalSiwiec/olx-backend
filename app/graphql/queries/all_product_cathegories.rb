# frozen_string_literal: true

module Queries
  class AllProductCathegories < BaseQuery
    type [Types::Custom::ProductCathegory], null: false

    def resolve
      ProductCathegory.all
    end
  end
end
