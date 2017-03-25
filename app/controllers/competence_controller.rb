class CompetenceController < ApplicationController
  before_action :set_competence, only: [:show, :update, :edit, :destroy]
  def index
    @competences = Competence.all
  end
  def show
  end

  def new
    @competence = Competence.new
  end

  def create
    @competence = Competence.new
    respond_to do |f|
      if @competence.save (competence_params)
        f.html {redirect_to @competence}
      else
        f.html {render :new}
      end
    end
  end

  def edit
  end

  def update
    respond_to do |f|
      if @competence.update (competence_params)
        f.html {redirect_to @competence}
      else
        f.html {render :edit}

      end
    end
  end

  def destroy
    if @competence.destroy
      respond_to do |f|
        f.html {redirect_to competences_url}
      end
    end
  end
  private
  def set_competence
    @competence = Competence.find (params[:id])
  end
  def competence_params
    params.require (:competence).permit (:title, :author, :skillrate)
  end
end
