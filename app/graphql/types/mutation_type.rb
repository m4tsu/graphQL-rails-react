module Types
  class MutationType < Types::BaseObject
    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World"
    end

    module Types
      class MutationType < Types::BaseObject
        field :create_comment, mutation: Mutations::CreateComment
        field :create_post, mutation: Mutations::CreatePost
      end
    end
  end
end
