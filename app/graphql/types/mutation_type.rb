# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject

    field :create_author, Types::AuthorType,
          null: true, description: 'Creates an author' do
      argument :first_name, String, required: true
      argument :last_name, String, required: true
      argument :yob, Integer, required: true
      argument :is_alive, Boolean, required: false
    end

    def create_author(first_name:, last_name:, yob:, is_alive:)
      Author.create(first_name: first_name, last_name: last_name, yob: yob, is_alive: is_alive)
    end
  end
end
