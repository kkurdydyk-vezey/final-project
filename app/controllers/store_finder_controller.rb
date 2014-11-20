class StoreFinderController < ApplicationController
  def home
    #home page (about us)
  end
  def index
    #load all cats
    @cats = Cat.all
  end
  def adopt
    
  end
  def contact
  end
  
  
end
