Rails.application.routes.draw do
  if Rails.env.development?
    # mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/api/v1/graphql"
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"

  end

  # 適宜好きなpathに設定してください. 今回のケースでは /api/v1/graphqlをエンドポイントにしています
  # namespace :api, { format: 'json' } do
  #   namespace :v1 do
  #     post "/graphql", to: "graphql#execute"
  #   end
  # end
  post "/graphql", to: "graphql#execute"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
