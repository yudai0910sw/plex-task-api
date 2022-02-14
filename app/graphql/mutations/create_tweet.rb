module Mutations
  class CreateTweet < GraphQL::Schema::RelayClassicMutation
    graphql_name 'CreateTweet'

    field :tweet, Types::TweetType, null: true
    field :result, Boolean, null: true

    argument :body, String, required: false

    def resolve(**args)
      tweet = Tweet.create(
        body: args[:body]
      )
      {
        tweet: tweet,
        result: tweet.errors.blank?
      }
    end
  end
end