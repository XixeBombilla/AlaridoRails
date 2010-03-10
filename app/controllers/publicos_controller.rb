class PublicosController < ApplicationController
  # GET /publicos
  # GET /publicos.xml
  def empresas
    
    @empresas= Empresa.all
    
  end
  
end
