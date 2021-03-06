class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def show
    @customer = set_customer
    @vehicle = Vehicle.new
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)

    if @customer.save
      session[:current_customer_id] = @customer.id
      redirect_to customers_path, notice: "Se ha creado el cliente"
    else
      render :new
    end
  end

  def edit
    @customer = set_customer
  end

  def update
    @customer = set_customer

    if @customer.update
      redirect_to customers_path, notice: "Cliente actualizado exitosamente."
    else
      render :edit
    end
  end

  private

  def customer_params
    params.require(:customer).permit(
      :first_name,
      :last_name,
      :address,
      :city,
      :email,
      :phone,
      :zip,
    )
  end

  def set_customer
    Customer.find(params[:id])
  end
end
