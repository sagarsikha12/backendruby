module Api
  module V1
    class CategoriesController < ApplicationController
      before_action :authenticate_jwt!
      before_action :set_category, only: [:show, :update, :destroy]


      # GET /api/v1/categories
      def index
        @categories = Category.all
        render json: @categories
      end

      # GET /api/v1/categories/1
      def show
        render json: @category
      end

      # POST /api/v1/categories
      def create
        @category = Category.new(category_params)

        if @category.save
          render json: @category, status: :created
        else
          render json: @category.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /api/v1/categories/1
      def update
        if @category.update(category_params)
          render json: @category
        else
          render json: @category.errors, status: :unprocessable_entity
        end
      end

      # DELETE /api/v1/categories/1
      def destroy
        @category.destroy
        head :no_content
      end

      private

      def set_category
        @category = Category.find(params[:id])
      end

      def category_params
        params.require(:category).permit(:name, :description)
      end
    end
  end
end
