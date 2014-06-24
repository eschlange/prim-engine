require_dependency 'prim_engine/application_controller'

module PrimEngine
  class Api::V1::ApiParticipantsController < ApplicationController
    before_action :set_participant_api, only: [:show, :edit, :update, :destroy]

    # GET /api_participants
    def index
      @participants = Participant.all
    end

    # GET /api_participants/1
    def show
    end

    # GET /api_participants/new
    def new
      @participant = Participant.new
    end

    # GET /api_participants/1/edit
    def edit
    end

    # POST /api_participants
    def create
      convert_to_participant
      if @participant.save
        redirect_to @participant, notice: 'Participant api was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /api_participants/1
    def update
      if @participant.update(
        email: participant_api_params[:email],
        first_name: participant_api_params[:first_name],
        last_name: participant_api_params[:last_name],
        date_of_birth: participant_api_params[:date_of_birth],
        phone: participant_api_params[:phone])
        redirect_to @participant, notice: 'Participant api was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /api_participants/1
    def destroy
      @participant.destroy
      redirect_to api_participants_url, notice: 'Participant api was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_participant_api
        @participant = Participant.find(params[:id])
      end

      def convert_to_participant
        @participant = Participant.new
        @participant.email = participant_api_params[:email]
        @participant.first_name = participant_api_params[:first_name]
        @participant.last_name = participant_api_params[:last_name]
        @participant.date_of_birth = participant_api_params[:date_of_birth]
        @participant.phone = participant_api_params[:phone]
      end

      # Only allow a trusted parameter "white list" through.
      def participant_api_params
        params.require(:api_participant).permit(:email, :first_name, :last_name, :date_of_birth, :phone)
      end
  end
end
