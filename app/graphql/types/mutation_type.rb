module Types
  class MutationType < Types::BaseObject
    field :delete_tweet, mutation: Mutations::DeleteTweet
    field :create_tweet, mutation: Mutations::CreateTweet
    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World"
    end
  end
end
