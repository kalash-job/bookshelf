# frozen_string_literal: true

class Types::AuthorInputType < GraphQL::Schema::InputObject
  graphql_name 'AuthorInputType'
  description 'All the attributes for creating an author'

  argument :first_name, String, required: true
  argument :last_name, String, required: true
  argument :yob, Integer, required: true
  argument :is_alive, Boolean, required: false
end

