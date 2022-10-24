# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :register_user,
          mutation: Mutations::RegisterUserMutation,
          description: 'Register user'

    field :login_user,
          mutation: Mutations::LoginUserMutation,
          description: 'Login user'

    field :logout_user,
          mutation: Mutations::LogoutUserMutation,
          description: 'Logout user'

    field :subscribe_user_to_newsletter,
          mutation: Mutations::SubscribeUserToNewsletterMutation,
          description: 'Save user to newsletter'

    field :change_user_password,
          mutation: Mutations::ChangeUserPasswordMutation,
          description: "Change user's password"

    field :add_opinion,
          mutation: Mutations::AddOpinionMutation,
          description: "Add user's opinion"

    field :add_order,
          mutation: Mutations::AddOrderMutation,
          description: "Add user's order"
  end
end
