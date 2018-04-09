# frozen_string_literal: true

class ProfilesController < ApplicationController
  before_action :find_profile, only: %i[show edit update]

  def show; end

  def new
    @profile = Profile.new
  end

  def create
    @profile = current_admin.build_profile(profile_params)
    if @profile.save
      redirect_to profile_path(:id), notice: 'Perfil guardado'
    else
      render 'new'
      flash[:alert] = 'Intentalo otra vez'
    end
  end

  def edit; end

  def update
    if current_admin.profile.update(profile_params)
      redirect_to profile_path(:id), notice: 'Editado'
    else
      render 'edit'
      flash[:alert] = 'Algo salio mal'
    end
  end

  private

  def find_profile
    @profile = current_admin.profile
  end

  def profile_params
    params.require(:profile).permit(:name, :observations)
  end
end
