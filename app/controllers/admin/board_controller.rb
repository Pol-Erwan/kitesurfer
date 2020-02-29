class Admin::BoardController < Admin::BasesController

  def index
    @products = Product.all
    @technic = Technic.all
    @option = Option.all
  end

  def new
    @product = Product.new
    @technic = Technic.new
    @option = Option.new
  end

  def create
      @product = Product.new(name: params[:name], brand: params[:brand], category: "board", domain: params[:domain], description: params[:description], favorite: params[:favorite], testsize: params[:testsize], youtube: params[:youtube], link: params[:link], price: params[:price], year: params[:year])

      @technic = Technic.new( control: params[:control], progression: params[:progression], freeride: params[:freeride], freestyle: params[:freestyle], maniability: params[:maniability], feeling: params[:feeling])

      @option = Option.new(detail: params[:detail], range: params[:range], fin: params[:fin], width: params[:width], stance: params[:stance], champs: params[:champs], carene: params[:carene], flex: params[:flex], weigh: params[:weigh])

      @product.technic = @technic
      @product.option = @option

      if @product.save && @technic.save && @option.save
        flash[:success] = "Le twin-tip a bien été ajouté !"
        redirect_to edit_admin_product_path(@product)
      else
        render :new
      end
  end

  def edit
    @product = Product.find(params[:id])
    @technic = Technic.find_by(product_id: @product.id)
    @option = Option.find_by(product_id: @product.id)

  end

  def update
    @product = Product.find(params[:id])
    @technic = Technic.find_by(product_id: @product.id)
    @option = Option.find_by(product_id: @product.id)

    if @product.update(name: params[:name], brand: params[:brand], category: "board", domain: params[:domain], description: params[:description], favorite: params[:favorite], testsize: params[:testsize], youtube: params[:youtube], link: params[:link], price: params[:price], year: params[:year])

      if @technic.update(control: params[:control], progression: params[:progression], freeride: params[:freeride], freestyle: params[:freestyle], maniability: params[:maniability], feeling: params[:feeling])

        if @option.update(detail: params[:detail], range: params[:range], fin: params[:fin], width: params[:width], stance: params[:stance], champs: params[:champs], carene: params[:carene], flex: params[:flex], weigh: params[:weigh])
          redirect_to admin_board_index_path
        else
          render :edit
        end
      end
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @technic = Technic.find_by(product_id: @product.id)
    @option = Option.find_by(product_id: @product.id)
    @product.delete
    @technic.delete
    @option.delete

      flash[:sucess] = "Le twin-tip a bien été supprimé !"

      redirect_to admin_kite_index_path
  end

end
