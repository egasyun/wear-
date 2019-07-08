Rails.application.routes.draw do

  devise_for :users
  root to: "clothes#index"
  resources :clothes do
    collection do
      get 'indexTshirt'
      get "IndexAll"
      get "IndexTankTop"
      get "IndexShirt"
      get "IndexKnit"
      get "IndexSweatShirt"
      get "IndexJacketOuters"
      get "IndexSuit"
      get "IndexTie"
      get "IndexPants"
      get "IndexShoes"
      get "IndexLegWear"
      get "IndexBag"
      get "IndexAccessories"
      get "IndexWatch"
      get "IndexOthers"
    end
  end
  resources :cordinates do
    collection do
      get "indexShortSleeve"
      get "indexLongSleeve"
      get "indexThickLongSleeve"
      get "indexCoat"
      get "new2"
    end
  end
  resources :selecting_cordinates


  get 'selected_cs/search'
  get 'selected_cs/selected_cs/result'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
