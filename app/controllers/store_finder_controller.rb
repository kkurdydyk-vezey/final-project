class StoreFinderController < ApplicationController
  def home
    #home page (about us)
  end
  def index
    #load all cats
    @cats = Cat.order("name").page(params[:page]).per(2)
  end
  def adopt
    
  end
  def contact
  end
  
  
end
