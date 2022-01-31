
module Api
  module V1
    class TelefonosController < ApplicationController
      def index
        @direccion = Telefono.all
        render json: @direccion, status: :ok
      end

      def show
        telefono = Telefono.find(params[:id])
        render json:  telefono, status: :ok
      end

      # def create
      #   abogado = Abogado.new(abogado_params)
      #
      #   if abogado.save
      #     render json: { status: 'Success', message: 'Se guardo el abogado', data: abogado }, status: :ok
      #   else
      #     render json: { status: 'Error!', message: 'Error al guardar abogado', data: abogado.errors }, status: :unprocessable_entity
      #
      #   end
      # end

      # private
      # def abogado_params
      #   params.permit(:casos, :descripcion, :calificacion, :usuario_id)
      # end
    end
  end
end

