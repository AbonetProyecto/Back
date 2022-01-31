
module Api
  module V1
    class UsuariosController < ApplicationController
      def index
        @usuario = Usuario.all
        render json: @usuario, status: :ok
      end

      def show
        usuario = Usuario.find(params[:id])
        render json: usuario, status: :ok
      end

      def create
        usuario = Usuario.new(usuario_params)

        if usuario.save
          render json: { status: 'Success', message: 'Se guardo el usuario', data: usuario }, status: :ok
        else
          render json: { status: 'Error!', message: 'Error al guardar usuario', data: usuario.errors }, status: :unprocessable_entity
        end
      end

      private
      def usuario_params
        params.permit(:nombre, :contrasena, :telefono_id, :direccion_id)
      end
    end
  end
end

