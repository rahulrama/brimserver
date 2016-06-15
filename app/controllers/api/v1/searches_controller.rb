class Api::V1::SearchesController < ApplicationController

  def create
    search = Search.new(search_params)
    search.user = current_user
    tags = search_params[:tags]
    tags.each do |tag|
      search.tags << tag
    end
    if search.save
      render json: search, status: :ok
    else
      render json: {search.errors, status: :unprocessable_entity}
    end
  end

  private

  def search_params
    params.require(:search).permit(:tags)
  end

end