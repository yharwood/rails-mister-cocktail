# class DosesController < ApplicationController
class DoseController < ApplicationController
  def new
    # @dose = Doses.new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
    # @dose = Doses.new(doses_params)
    @dose = Dose.new(doses_params)
    @cocktail = Cocktails.find(paramas[:cocktail_id])
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def delete
    @dose = Dose.destroy
  end

  private

  def doses_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
