class StoriesController < ApplicationController
 def index
    @stories = StoryModel.all
  end
def show
	@story =StoryModel.find(params[:id])
end 
	def new
 	end
 	#snippet for brevity
 	  def create
 	   @story = StoryModel.new(story_params)
 
  @story.save
  redirect_to @story_models
end
 
private
  def story_params
    params.require(:story).permit(:title, :text, :name, :email, :date)
      end
end