require_dependency "prim_engine/application_controller"

module PrimEngine
  class ApiParticipantsController < ApplicationController
    before_action :set_participant_api, only: [:show, :edit, :update, :destroy]

    # GET /api_participants
    def index
      @api_participants = ApiParticipant.all
    end

    # GET /api_participants/1
    def show
    end

    # GET /api_participants/new
    def new
      @participant_api = ApiParticipant.new
    end

    # GET /api_participants/1/edit
    def edit
    end

    # POST /api_participants
    def create
      @participant_api = ApiParticipant.new(participant_api_params)

      if @participant_api.save
        redirect_to @participant_api, notice: 'Participant api was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /api_participants/1
    def update
      if @participant_api.update(participant_api_params)
        redirect_to @participant_api, notice: 'Participant api was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /api_participants/1
    def destroy
      @participant_api.destroy
      redirect_to api_participants_url, notice: 'Participant api was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_participant_api
        @participant_api = ApiParticipant.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def participant_api_params
        params.require(:participant_api).permit(:email, :last_name, :date_of_birth, :phone)
      end
  end
end
