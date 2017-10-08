class ArticlesController < ApplicationController
    def new
        @article = Article.new
    end
    
    def create
        @article = Article.new(articles_params)
        @article.save
        redierct_to articles_show(@article)
    end
    
    private
        def articles_params
            params.require(:article).permit(:title, :description)
        end
end