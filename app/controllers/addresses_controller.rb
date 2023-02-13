class AddressesController < ApplicationController

  before_action :find_address_id , only: [:edit, :update, :show, :destroy]

  def index
    @addresses = current_user.addresses.all 
  end

  def show
  end

  def new
    @address = Address.new 
  end

  def create
    # if address_params[:addressable_type].eql?("Home")
    #   @address = current_user.build_home_address(address_params)
    # elsif address_params[:addressable_type].eql?("Work")
    #   @address = current_user.build_work_address(address_params)
    # else
    #   @address = current_user.build_current_address(address_params)
    # end
    @address = current_user.addresses.new(address_params)

    if @address.save
      flash[:notice] = 'You SuccessFully Created Address'
      redirect_to addresses_path
    else
      flash[:notice] = puts @address.errors.full_messages
      render 'new'
    end
  end

  def edit
  end

  def update
    @address.update(address_params)
    if @address.save
      flash[:notice] = 'You SuccessFully Update The Address'
      redirect_to addresses_path
    else
      flash[:notice] = 'Somethig Is Wrong'
      render 'edit'
    end
  end

  def destroy
    @address.destroy
    redirect_to addresses_path
  end

  private 
  
  def find_address_id
    @address = Address.find(params[:id])
  end

  def address_params
    params.require(:address).permit(:address, :city, :state, :zip_code, :country, :telephone, :address_type)
  end
end
