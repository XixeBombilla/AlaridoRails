class PublicosController < ApplicationController
  # GET /publicos
  # GET /publicos.xml
  def index
    @publicos = Publico.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @publicos }
    end
  end

  # GET /publicos/1
  # GET /publicos/1.xml
  def show
    @publico = Publico.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @publico }
    end
  end

  # GET /publicos/new
  # GET /publicos/new.xml
  def new
    @publico = Publico.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @publico }
    end
  end

  # GET /publicos/1/edit
  def edit
    @publico = Publico.find(params[:id])
  end

  # POST /publicos
  # POST /publicos.xml
  def create
    @publico = Publico.new(params[:publico])

    respond_to do |format|
      if @publico.save
        flash[:notice] = 'Publico was successfully created.'
        format.html { redirect_to(@publico) }
        format.xml  { render :xml => @publico, :status => :created, :location => @publico }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @publico.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /publicos/1
  # PUT /publicos/1.xml
  def update
    @publico = Publico.find(params[:id])

    respond_to do |format|
      if @publico.update_attributes(params[:publico])
        flash[:notice] = 'Publico was successfully updated.'
        format.html { redirect_to(@publico) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @publico.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /publicos/1
  # DELETE /publicos/1.xml
  def destroy
    @publico = Publico.find(params[:id])
    @publico.destroy

    respond_to do |format|
      format.html { redirect_to(publicos_url) }
      format.xml  { head :ok }
    end
  end
end
