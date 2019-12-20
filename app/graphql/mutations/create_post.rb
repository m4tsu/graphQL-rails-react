module Mutations
  class CreatePost < Mutations::BaseMutation
    argument :user_id, Int, required: true
    argument :title, String, required: true
    argument :body, String, required: true

    field :posts, Types::PostType, null: true
    field :errors, [String], null: false

    def resolve(user_id:, title:, body:)
      post = Post.new(user_id: user_id, title: title, body: body)

      if post.save
        {
          post: post,
          errors: []
        }
      else
        {
          post: nil,
          errors: post.errors.full_messages
        }
      end
    end
  end
end