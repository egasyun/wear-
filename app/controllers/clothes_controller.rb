class ClothesController < ApplicationController

  before_action :authenticate_user!
    def index
      @clothes = Clothe.all
      @user_clothes = @clothes.where(user_id: current_user.id)

    end

    def new
      @clothe = Clothe.new
    end

    def create
      @clothe = Clothe.new(clothe_params)
      @clothe.user_id = current_user.id
      if @clothe.save
        redirect_to :action => "index"
      else
        redirect_to :action => "new"
      end
    end

    def show
      @clothe = Clothe.find(params[:id])
    end

    def edit
      @clothe = Clothe.find(params[:id])
    end

    def update
      @clothe = Clothe.find(params[:id])
      if @clothe.update(clothe_params)
        redirect_to :action => "show", :id => @clothe.id
      else
        redirect_to :action => "new"
      end
    end

    def IndexAll
      @user_clothes = Clothe.where(user_id: current_user.id)

    end
    def indexTshirt
      @user_clothes =Clothe.where(user_id: current_user.id)
    end

    def IndexTankTop
      @user_clothes =Clothe.where(user_id: current_user.id)
    end

    def IndexShirt
      @user_clothes =Clothe.where(user_id: current_user.id)
    end

    def IndexKnit
      @user_clothes =Clothe.where(user_id: current_user.id)
    end

    def IndexSweatShirt
      @user_clothes =Clothe.where(user_id: current_user.id)
    end

    def IndexJacketOuters
      @user_clothes =Clothe.where(user_id: current_user.id)
    end

    def IndexSuit
      @user_clothes =Clothe.where(user_id: current_user.id)
    end

    def IndexTie
      @user_clothes =Clothe.where(user_id: current_user.id)
    end

    def IndexPants
      @user_clothes =Clothe.where(user_id: current_user.id)
    end

    def IndexShoes
      @user_clothes =Clothe.where(user_id: current_user.id)
    end

    def IndexLegWear
      @user_clothes =Clothe.where(user_id: current_user.id)
    end

    def IndexBag
      @user_clothes =Clothe.where(user_id: current_user.id)
    end

    def IndexAccessories
      @user_clothes =Clothe.where(user_id: current_user.id)
    end

    def IndexWatch
      @user_clothes =Clothe.where(user_id: current_user.id)
    end

    def IndexOthers
      @user_clothes =Clothe.where(user_id: current_user.id)
    end

    def destroy
      Clothe.find(params[:id]).destroy
      redirect_to action: :index
    end




   private
   def clothe_params
     params.require(:clothe).permit(:image, :name, :genre, :user_id, :buy_date, :remove_image, :memorandum)
   end


end
