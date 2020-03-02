class Admin::AccessoryController < Admin::BasesController

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
      @product = Product.new(name: params[:name], brand: params[:brand], category: "newaccessory", domain: params[:domain], favorite: params[:favorite])

      @technic = Technic.new( wave: params[:wave])

      @option = Option.new(detail: params[:detail], range: params[:range])

      @product.technic = @technic
      @product.option = @option

      if @product.save && @technic.save && @option.save
        flash[:success] = "l'accessoire a bien été ajouté !"
        redirect_to edit_admin_accessory_path(@product.id)
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

    if @product.update(name: @product.name , brand: @product.brand , category: "accessory", domain: @product.domain , description: params[:description], favorite: @product.favorite, youtube: params[:youtube], link: params[:link], price: params[:price], year: params[:year])

      if @technic.update( grip: params[:grip], wave: params[:wave], freeride: params[:freeride], freestyle: params[:freestyle], maniability: params[:maniability], feeling: params[:feeling])

        if @option.update(detail: params[:detail], range: params[:range],trim: params[:trim], twist: params[:twist], line: params[:line], v: params[:v], bar: params[:bar], flex: params[:flex], velcros: params[:velcros], zip: params[:velcros], thickness: params[:thickness])
          redirect_to edit_admin_product_path(@product)
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

      flash[:sucess] = "L'accessoire a bien été supprimé !"

      redirect_to admin_accessory_index_path
  end

end
