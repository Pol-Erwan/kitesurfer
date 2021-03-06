class Admin::SurfboardController < Admin::BasesController

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
      @product = Product.new(name: params[:name], brand: params[:brand], category: "surfboard", domain: params[:domain], description: params[:description], favorite: params[:favorite], testsize: params[:testsize], youtube: params[:youtube], link: params[:link], price: params[:price], year: params[:year])

      @technic = Technic.new(wave: params[:wave],freestyle: params[:freestyle], courbes: params[:courbes],wind: params[:wind],sideshore: params[:sideshore],onshore: params[:onshore], strap: params[:strap],strapless: params[:strapless], transitions: params[:transitions])

      @option = Option.new(detail: params[:detail], range: params[:range], fin: params[:fin], width: params[:width], weigh: params[:weigh], length: params[:length], maitrebau: params[:maitrebau], thickness: params[:thickness], volum: params[:volum], box: params[:box], carene: params[:carene])

      @product.technic = @technic
      @product.option = @option

      if @product.save && @technic.save && @option.save
        flash[:success] = "Le surf a bien été ajouté !"
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

    if @product.update(name: params[:name], brand: params[:brand], category: "surfboard", domain: params[:domain], description: params[:description], favorite: params[:favorite], testsize: params[:testsize], youtube: params[:youtube], link: params[:link], price: params[:price], year: params[:year])

      if @technic.update(wave: params[:wave],freestyle: params[:freestyle], courbes: params[:courbes],wind: params[:wind],sideshore: params[:sideshore],onshore: params[:onshore], strap: params[:strap],strapless: params[:strapless], transitions: params[:transitions])

        if @option.update(detail: params[:detail], range: params[:range], fin: params[:fin], width: params[:width], weigh: params[:weigh], length: params[:length], maitrebau: params[:maitrebau], thickness: params[:thickness], volum: params[:volum], box: params[:box], carene: params[:carene])
          redirect_to admin_surfboard_index_path
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
    @compare = Compare.where(product_id: @product.id)
    @product.delete
    @technic.delete
    @option.delete
    if @compare != nil
      @compare.destroy_all
    end
      flash[:sucess] = "Le surf a été supprimé !"

      redirect_to admin_surfboard_index_path
  end

end
