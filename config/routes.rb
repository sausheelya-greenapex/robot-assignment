Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api,defaults: { format: 'json' } do
    namespace :v do
      get "robot"=> "commands#order"
       get "robot/second"=> "commands#second_order"
        get "robot/third"=> "commands#third_order"
    end
  end
end
