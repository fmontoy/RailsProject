class MainController < ApplicationController

  def index
    @estudiantes = Estudiante.all

  end

  def new
    @estudiantes = Estudiante.new
  end

  def show_data
    @estudiantes = Estudiante.all
    @name = params[:name_user]
    @note1 = params[:note_1]
    @per1 = params[:per_1]
    @note2 = params[:note_2]
    @per2 = params[:per_2]
    @note3 = params[:note_3]
    @per3 = params[:per_3]
    @avg = (((@note1.to_i) * (@per1.to_f/100)) + ((@note2.to_i) * (@per2.to_f/100)) + ((@note3.to_i) * (@per3.to_f/100)))/10
    @estudiante = Estudiante.new(:nombre => @name, :definitiva =>@avg)
    @estudiante.save
    render 'tabla/view_table'
  end


end
