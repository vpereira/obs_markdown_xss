class VectorsController < ApplicationController
  before_action :set_raw

  def index
    @xss_vectors = XSSVector.all
  end

  def show
    @xss_vector = XSSVector.find(params[:id])
  end

  private 
  def set_raw
    @raw = raw?
  end

  def raw?
    return false if params[:raw].blank?
    params[:raw] == 'true' ? true : false
  end
end
