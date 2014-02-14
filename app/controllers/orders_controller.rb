class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.where(user_id:current_user.id)

  end

  # GET /orders/1
  # GET /orders/1.json
  def show
    @semester = Semester.find_by_id(@order.semester_id)
  end

  # GET /orders/new
  def new
    @order = Order.new
    @semesters = Semester.all
    @college_classes = CollegeClass.all
  end

  # GET /orders/1/edit
  def edit
    @semesters = Semester.all
    @college_classes = CollegeClass.all
    @selectedClasses = @order.college_classes.collect {|college_class| college_class.id}
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(user_id:current_user.id,semester_id:params[:order][:semester_id])
    begin
      respond_to do |format|
        if @order.save
          @order.addCollegeClasses(params[:order][:college_classes])
          format.html { redirect_to @order, notice: 'Order was successfully created.' }
          format.json { render action: 'show', status: :created, location: @order }
        else
          format.html { render action: 'new' }
          format.json { render json: @order.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        @order.college_classes.delete_all
        @order.addCollegeClasses(params[:order][:college_classes])
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:customer_id, :semester)
    end
end
