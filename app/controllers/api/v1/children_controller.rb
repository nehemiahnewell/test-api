class Api::V1::ChildrenController < Api::V1::BaseController

  def index
    children = Child.all
    render json: children, status: 200
  end
 
  def show
    child = Child.find(params[:id])
    render json: child, status: 200
  end
  
  def create
    child = Child.new(child_params)
 
    if child.valid?
      child.save!
      render json: child, status: 201
    else
       render json: {error: "Child is invalid", status: 400}, status: 400
    end
  end
 
  def destroy
    child = Child.find(params[:id])
 
    if child.destroy
      render json: {success: true}, status: 200
    else
      render json: {success: false}, status: 400
    end
  end
  
  def update
    child = Child.find(params[:id])
 
    if child.update_attributes(child_params)
      render json: {success: true}, status: 200
    else
      render json: {success: false}, status: 400
    end
  end
  
  private
  
  def child_params
    params.require(:child).permit(:first_name, :last_name, :age, :date_of_birth)
  end
end