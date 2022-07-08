class Organisation < ApplicationRecord
    has_many :users
    scope :search, -> (name){where("name Like ?", "%#{name}%")}
    scope :filter_by_params, ->(params){
    search(params[:search])
  }

end
