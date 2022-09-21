class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @mangas = Manga.all
  end
end
