class StoreFinderController < ApplicationController
  def home
    #home page (about us)
  end
  def index
    #load all cats
    @cats = Cat.order("name").page(params[:page]).per(3)
  end
  def adopt 
  end
  def contact
  end
  def breeds
    @breeds = Breed.all
  end
  def new
    @cat = Cat.new
    @breeds = Breed.all
  end
  def create
    @cat = Cat.new(cat_params)
    if @cat.save
      redirect_to action: :index
    else
      render :new
    end
    
    #code
  end
  def edit
    @cat = Cat.find(params[:id])
    @breeds = Breed.all
  end
  def update
    @cat = Cat.find(params[:id])
    if @cat.update_attributes(cat_params)
      redirect_to @cat
    else
      render :edit
    end
  end
  def destroy
    @cat = Cat.find(params[:id])
    @cat.destroy
    redirect_to root_path
  end
  def search_results
    wildcard_keyword = '%' + params[:search_keywords] + '%'
    @cats = Cat.where("name LIKE ?", wildcard_keyword)
  end
  private
    def cat_params
      params.require(:cat).permit(:name, :age, :colour, :rescue_date, :price, :breed_id)
    end
  
end
