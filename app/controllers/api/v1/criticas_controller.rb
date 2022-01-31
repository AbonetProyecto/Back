
module Api
  module V1
    class CriticasController < ApplicationController
      def index
        @criticas = Critica.all
        render json: @criticas,status: :ok
      end

      def show
        critica = Critica.find(params[:id])
        render json: critica, status: :ok
      end

      def create
        critica = Critica.new(critica_params)

        if critica.save
          render json: { status: 'Success', message: 'Se guardo la critica', data: critica }, status: :ok
        else
          render json: { status: 'Error!', message: 'Error', data: critica.errors }, status: :unprocessable_entity

        end
      end

      private
      def critica_params
        params.permit(:descripcion,:cliente_id, :abogado_id)
      end
    end
  end
end

