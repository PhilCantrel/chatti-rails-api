class MessagesController < ApplicationController

    before_action :find_message, only: [:show, :update, :destroy]
    skip_before_action :verify_authenticity_token, only: [:create, :update, :destroy]

    def index
        @messages = Message.order(updated_at: :desc)
        render json: @messages
    end

    def create
        @message = Message.create(message_params)
        if @message.errors.any?
            render json: @message.errors, status: 422
        else
            render json: @message, status: 201
        end
    end

    def show
        render json: @message
    end

    def destroy
        @message.delete
        render json: {message: "message deleted"}, status: 204
    end


    def find_message
        begin
            @message = Message.find(params[:id])
        rescue
            render json: {error: "message does not exits"}, status:404
        end
        
    end

    def update
        @message.update(message_params)
        if @message.errors.any?
            render json: @message.errors, status: 422
        else
            render json: @message, status: 200
        end
            
    end

    private

    def message_params
        params.require(:message).permit(:m_text)
    end


end
