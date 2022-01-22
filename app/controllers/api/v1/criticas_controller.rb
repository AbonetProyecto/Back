
module Api
  module V1
    class CriticasController < ApplicationController
      def index
        @criticas = Critica.all
        render json: @criticas,status: :ok
      end

      def show
        critica = Critica.find(params[:id])
        render json: { status: 'Success', message: 'Cargada la critica', data: critica }, status: :ok
      end

      # def create
      #   abogado = Abogado.new(abogado_params)
      #
      #   if abogado.save
      #     render json: { status: 'Success', message: 'Se guardo el abogado', data: abogado }, status: :ok
      #   else
      #     render json: { status: 'Error!', message: 'Error', data: abogado.errors }, status: :unprocessable_entity
      #
      #   end
      # end
      #
      # private
      # def abogado_params
      #   params.permit(:casos, :descripcion, :califiacion, :usuario_id)
      # end
    end
  end
end

