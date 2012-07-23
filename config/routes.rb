Blog::Application.routes.draw do

  resources :posts do
    resources :comments, only: [:new, :create, :destroy]
    collection do
      get 'in/:category_id', action: "index", as: 'in_category'
    end
  end

  root to: redirect('/posts')

end
