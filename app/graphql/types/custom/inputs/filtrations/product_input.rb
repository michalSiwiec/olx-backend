# frozen_string_literal: true

module Types
  module Custom
    module Inputs
      module Filtrations
        class ProductInput < Types::BaseInputObject
          argument :promoted, Boolean, required: false
          argument :type, String, required: false
          argument :pagination, PaginationInput, required: false
        end
      end
    end
  end
end
