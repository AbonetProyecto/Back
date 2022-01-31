module Api
  module V1
    class AbogadosController < ApplicationController
      def index
        @abogado= Abogado.all
        render json: @abogado, status: :ok
      end

      def show
        abogado = Abogado.find(params[:id])
        render json: abogado, status: :ok
      end

      def create
        abogado = Abogado.new(abogado_params)

        if abogado.save
          render json: { status: 'Success', message: 'Se guardo el abogado', data: abogado }, status: :ok
        else
          render json: { status: 'Error!', message: 'Error al guardar abogado', data: abogado.errors }, status: :unprocessable_entity

        end
      end

      private
      def abogado_params
        params.permit(:casos, :descripcion, :calificacion, :usuario_id)
      end
    end
  end
end

