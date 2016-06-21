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
      render json: {status: :unprocessable_entity}
    end
  end

  def create
  @user = User.new(params[:user])

  respond_to do |format|
    if @user.save
      flash[:notice] = 'User was successfully created.'
      format.html { redirect_to(@user) }
      format.xml { render xml: @user, status: :created, location: @user }
    else
      format.html { render action: "new" }
      format.xml { render xml: @user.errors, status: :unprocessable_entity }
    end
  end
end

  private

  def search_params
    params.require(:search).permit(:tags)
  end

end
