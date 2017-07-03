class MenusController < ApplicationController
  before_action :set_menus
  before_action :set_menu, only: [:show, :edit, :update, :destroy]

  skip_before_action :authenticate_user!, only: [:index, :show]
  

  # GET restaurants/1/menus
  def index
    @menus = @restaurant.menus
  end

  # GET restaurants/1/menus/1
  def show
    @menu = Menu.new

  end

  # GET restaurants/1/menus/new
  def new
    @menu = @restaurant.menus.build
  end

  # GET restaurants/1/menus/1/edit
  def edit
  end

  # POST restaurants/1/menus
  def create
    @menu = @restaurant.menus.build(menu_params)

    if @menu.save
      redirect_to([@menu.restaurant, @menu], notice: 'Menu was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT restaurants/1/menus/1
  def update
    if @menu.update_attributes(menu_params)
      redirect_to([@menu.restaurant, @menu], notice: 'Menu was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE restaurants/1/menus/1
  def destroy
    @menu.destroy

    redirect_to restaurant_menus_url(@restaurant)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_menus
      @restaurant = Restaurant.find(params[:restaurant_id])
    end

    def set_menu
      @menu = @restaurant.menus.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def menu_params
      params.require(:menu).permit(:menu_name, :menu_description)
    end
end
