class PerfilController < ApplicationController
  def show
    @user = User.find(params[:id])
    if @user
      @orcamentos = @user.orcamentos.all
      render action: :show
    else
      render file: 'public/404', status: 404, formats: [:html]
    end
  end
end
