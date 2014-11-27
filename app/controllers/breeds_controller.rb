class BreedsController < InheritedResources::Base
  def index
    @breeds = Breed.all
    @cats = Breed.find_by_id(params[:id]).cats.page(params[:page]).per(3)
  end

  private

    def breed_params
      params.require(:breed).permit(:name, :description)
    end
end

