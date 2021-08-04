class ProfileController < ApplicationController
  before_action :authenticate_user!
  before_action :client_only

  def index
  end

  def update
    if current_user.update(profile_params)
      flash['notice'] = 'Perfil actualizado correctamente'
      redirect_to profile_index_path
    else
      flash['alert'] = 'Hubo un error al actualizar perfil'
      render 'index'
    end
  end

  def delete
  end
  
  private
  def profile_params
    params.fetch(:client, {}).permit(:name, :age, :email)
  end
end
