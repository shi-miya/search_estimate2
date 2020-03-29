class EstimatesController < ApplicationController
  before_action :set_new_estimate, only: [:new]

  def index 
  end

  def new
  end

  def create
  end

  private

  def set_new_estimate
    @estimate = Estimate.new
  end


end
