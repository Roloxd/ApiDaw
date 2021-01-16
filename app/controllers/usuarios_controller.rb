class UsuariosController < ApplicationController
	skip_before_action :verify_authenticity_token
	before_action :set_recipe,
only: [:show, :update, :destroy]
# GET /todos
def index
@recipes = Usuario.all
json_response(@recipes)
end
# GET /todos/:id
def show
json_response(@recipes)
end
# POST /todos
def create
@recipes = Usuario.create!(recipe_params)
json_response(@recipes, :created)
end

# PUT /todos/:id
def update 
@recipes.update(recipe_params)
head :no_content
end
# DELETE /todos/:id
def destroy 
@recipes.destroy!
head :no_content
end

private
def recipe_params
params.permit(:username, :userpass)
end
def set_recipe
@recipes = Usuario.find(params[:id])
end
end
