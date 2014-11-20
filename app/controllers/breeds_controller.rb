class BreedsController < InheritedResources::Base

  private

    def breed_params
      params.require(:breed).permit(:name, :description)
    end
end

