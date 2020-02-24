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
      @product = Product.new(name: params[:name], brand: params[:brand], category: params[:category], domain: params[:domain], description: params[:description], favorite: params[:favorite], testsize: params[:testsize], youtube: params[:youtube], link: params[:link], price: params[:price], year: params[:year])

      @technic = Technic.new( wave: params[:wave], bigair: params[:bigair], freeride: params[:freeride], freestyle: params[:freestyle], maniability: params[:maniability], feeling: params[:feeling])

      @option = Option.new(size: params[:size], bridle: params[:bridle], strut: params[:strut])

      @product.technic = @technic
      @product.option = @option

      if @product.save && @technic.save && @option.save
        flash[:success] = "Le kite a bien été ajouté !"
        redirect_to admin_kite_index_path
      else
        render :new
      end
  end

  def edit
    @product = Product.find(params[:id])
    @technic = Technic.find_by(product_id: @product.id)
    @option = Option.find_by(product_id: @product.id)
  end

  def destroy
    @product = Product.find(params[:id])
    @technic = Technic.find_by(product_id: @product.id)
    @option = Option.find_by(product_id: @product.id)
    @product.delete
    @technic.delete
    @option.delete

      flash[:sucess] = "Le kite a bien été supprimé !"

      redirect_to admin_kite_index_path
    end

end
