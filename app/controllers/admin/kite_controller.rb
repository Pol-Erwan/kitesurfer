class Admin::KiteController < Admin::BasesController

  def index
    @kites = Product.all
    @technic = Technic.all
    @option = Option.all
  end

  def new
    @kite = Product.new
    @technic = Technic.new
    @option = Option.new
  end

  def create
      @kite = Product.new(name: params[:name], brand: params[:brand], category: params[:category], domain: params[:domain], description: params[:description], favorite: params[:favorite], testsize: params[:testsize], youtube: params[:youtube], link: params[:link], price: params[:price], year: params[:year])

      @technic = Technic.new( wave: params[:wave], bigair: params[:bigair], freeride: params[:freeride], freestyle: params[:freestyle], maniability: params[:maniability], feeling: params[:feeling])

      @option = Option.new(size: params[:size], bridle: params[:bridle], strut: params[:strut])

      @kite.technic = @technic
      @kite.option = @option

      if @kite.save && @technic.save && @option.save
        flash[:success] = "Le kite a bien été ajouté !"
        redirect_to admin_kite_index_path
      else
        render :new
      end
  end

  def edit
    @kite = Product.find(params[:id])
    @technic = Technic.find_by(product_id: @kite.id)
    @option = Option.find_by(product_id: @kite.id)
  end

  def destroy
    @kite = Product.find(params[:id])
    @technic = Technic.find_by(product_id: @kite.id)
    @option = Option.find_by(product_id: @kite.id)
    @kite.delete
    @technic.delete
    @option.delete

      flash[:sucess] = "Le kite a bien été supprimé !"

      redirect_to admin_kite_index_path
    end

end
