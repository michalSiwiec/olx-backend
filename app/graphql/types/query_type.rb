# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :products,
          resolver: Queries::ProductsQuery,
          description: 'Returns array of products. Possible passing filtering variables, among others: promoted'

    field :is_user_logged,
          resolver: Queries::IsUserLoggedQuery,
          description: "Returns info if user's session is present"

    field :products_cathegories,
          resolver: Queries::AllProductCathegoriesQuery,
          description: 'Returns array fo products cathegories'

    field :opinions, resolver: Queries::OpinionsQuery, description: 'Returns array of opinions'
  end
end
