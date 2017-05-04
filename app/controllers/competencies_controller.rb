class CompetenciesController < ApplicationController

  def index
    @competencies = Unirest.get(CFAAPI)
  end

  def show
    @competency = Unirest.get(CFAAPI)
  end


end
