class Admin::KiteController < Admin::BasesController

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
      @product = Product.new(name: params[:name], brand: params[:brand], category: "kite", domain: params[:domain], description: params[:description], favorite: params[:favorite], testsize: params[:testsize], youtube: params[:youtube], link: params[:link], price: params[:price], year: params[:year])

      @technic = Technic.new( wave: params[:wave], bigair: params[:bigair], freeride: params[:freeride], freestyle: params[:freestyle], maniability: params[:maniability], feeling: params[:feeling])

      @option = Option.new(detail: params[:detail], range: params[:range], bridle: params[:bridle], strut: params[:strut])

      @product.technic = @technic
      @product.option = @option

      if @product.save && @technic.save && @option.save
        flash[:success] = " Le kite a été ajouté ! "
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

    if @product.update(name: params[:name], brand: params[:brand], category: "kite", domain: params[:domain], description: params[:description], favorite: params[:favorite], testsize: params[:testsize], youtube: params[:youtube], link: params[:link], price: params[:price], year: params[:year])

      if @technic.update( wave: params[:wave], bigair: params[:bigair], freeride: params[:freeride], freestyle: params[:freestyle], maniability: params[:maniability], feeling: params[:feeling])

        if @option.update(detail: params[:detail], range: params[:range], bridle: params[:bridle], strut: params[:strut])
          flash[:success] = " Le kite a été modifié ! "
          redirect_to admin_kite_index_path
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

      flash[:sucess] = " Le kite a été supprimé ! "

      redirect_to admin_kite_index_path
  end

end
