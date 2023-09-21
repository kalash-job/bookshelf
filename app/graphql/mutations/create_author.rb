# frozen_string_literal: true

class Mutations::CreateAuthor < GraphQL::Schema::Mutation
  null true

  argument :first_name, String, required: true
  argument :last_name, String, required: true
  argument :yob, Integer, required: true
  argument :is_alive, Boolean, required: false

  field :author, Types::AuthorType, null: true
  field :errors, [String], null: false

  def resolve(first_name:, last_name:, yob:, is_alive:)
    Author.create(first_name:, last_name:, yob:, is_alive:)
  end
end
