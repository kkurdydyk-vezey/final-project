class StoreFinderController < ApplicationController
  def index
    #load all cats
    @cats = Cat.all
  end
  
end
