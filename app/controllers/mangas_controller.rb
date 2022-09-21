class MangasController < ApplicationController
  def show
    @manga = Manga.find(params[:id])
    @articles = Article.where(manga_id: @manga.id)
  end
end
