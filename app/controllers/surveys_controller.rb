class SurveysController < ApplicationController
	def new
	end

	def show
    @survey = Survey.find(params[:id])
  	end
  	
	def create
		@survey = Survey.new(survey_params)
 
  		@survey.save
  		redirect_to @survey
	end
	private
  		def survey_params
    		params.require(:survey).permit(:title, :text)
  		end
end
