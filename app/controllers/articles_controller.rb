class ArticlesController < ApplicationController
	def new
		@article=Article.new
	end

	def edit 
		@article =Article.find(params[:id])
	end

	def index
		@articles=Article.all
	end
	
	def show
   		 @article = Article.find(params[:id])
  	end
  	


  	def destroy
 	 	@article = Article.find(params[:id])
  		@article.destroy
 
	 	redirect_to articles_path
	end
	def create
 		 @article = Article.new(article_params)
 
	     if @article.save
  		 	redirect_to @article
  		 else
  		 	render 'new'
  		 end
	end
 
private
  def article_params
    params.require(:article).permit(:title, :text)
  end
	
	
end
