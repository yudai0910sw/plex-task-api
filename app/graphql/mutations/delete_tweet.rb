module Mutations
  class DeleteTweet < GraphQL::Schema::RelayClassicMutation
    graphql_name 'DeleteTweet'

    field :tweet, Types::TweetType, null: true
    field :result, Boolean, null: true

    argument :id, ID, required: true

    def resolve(**args)
      tweet = Tweet.find(args[:id])
      tweet.destroy
      {
        tweet: tweet
      }
    end
  end
end
