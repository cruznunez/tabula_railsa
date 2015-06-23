class HomeController < ApplicationController

  def new
    @survey = Survey.new
  end

  def create
    @survey = Survey.new(survey_params)

    respond_to do |format|
      if session[:submitted] != true && @survey.save
        session[:submitted] = true
        format.html { redirect_to home_path(@survey), notice: 'Survey was successfully created.' }
        format.json { render :show, status: :created, location: @survey }
      elsif session[:submitted] = true
        format.html { redirect_to root_path, notice: "Already took survey :p" }
      else
        format.html { render :new }
        format.json { render json: @survey.errors, status: :unprocessable_entity }

      end
    end
  end

  def show
    @survey = Survey.find(params[:id])
  end

  def reset
    session[:submitted] = false
    redirect_to root_path
  end


  private def survey_params
    params.require(:survey).permit(:name, :chocolate, :rainbow, :puppies, :cash)
  end

end
