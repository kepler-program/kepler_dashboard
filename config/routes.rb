Rails.application.routes.draw do
  get "/competencies" => 'competencies#index'
  get "/competencies/:id" => 'competencies#show'
end
