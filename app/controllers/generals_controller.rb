class GeneralsController < ApplicationController
  # GET /generals
  # GET /generals.xml
  before_filter :login_required, :except =>[:show, :new, :edit, :create, :update]
  
  def index
    @generals = General.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @generals }
    end
  end

  # GET /generals/1
  # GET /generals/1.xml
  def show
    @general = General.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @general }
    end
  end

  # GET /generals/new
  # GET /generals/new.xml
  def new
    @general = General.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @general }
    end
  end

  # GET /generals/1/edit
  def edit
    @general = General.find(params[:id])
  end

  # POST /generals
  # POST /generals.xml
  def create
    @general = General.new(params[:general])

    respond_to do |format|
      if @general.save
        flash[:notice] = 'Creado.'
        format.html { redirect_to(@general) }
        format.xml  { render :xml => @general, :status => :created, :location => @general }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @general.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /generals/1
  # PUT /generals/1.xml
  def update
    @general = General.find(params[:id])

    respond_to do |format|
      if @general.update_attributes(params[:general])
        flash[:notice] = 'Actualizado.'
        format.html { redirect_to(@general) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @general.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /generals/1
  # DELETE /generals/1.xml
  def destroy
    @general = General.find(params[:id])
    @general.destroy

    respond_to do |format|
      format.html { redirect_to(generals_url) }
      format.xml  { head :ok }
    end
  end
end
