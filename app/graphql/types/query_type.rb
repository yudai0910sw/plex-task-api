module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # ★ここから追記
    field :tweets, [Types::TweetType], null: false, description: 'タスクを全件取得する'
    def tweets
      Tweet.all
    end
    # ★ここまで追記
  end
end