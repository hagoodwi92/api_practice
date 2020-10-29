class NamesController < ApplicationController

  def index
    @names = Name.all
    json_response(@names)
  end

  def show
    @name = Name.find(params[:id])
    json_response(@name)
  end

  def create
    @name = Name.create!(name_params)
    json_response(@name, :created)
  end

  def update
    @name = Name.find(params[:id])
    if @name.update!(name_params)
      render status: 200, json: {
       message: "This name has been updated successfully."
       }
    end
  end

  def destroy
    @name = Name.find(params[:id])
    if @name.update!(name_params)
      render status: 200, json: {
       message: "This name has been destroyed successfully."
       }
    end
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def name_params
    params.permit(:petName, :petType, :petColor)
  end
end