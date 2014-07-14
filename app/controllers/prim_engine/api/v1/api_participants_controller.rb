require_dependency 'prim_engine_api/application_controller'

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
      @participant.create(participant_api_params)
      render json: @participant.to_json, status: :created
    end

    # PATCH/PUT /api_participants/1
    def update
      @participant.update(participant_api_params)
    end

    # DELETE /api_participants/1
    def destroy
      @participant.destroy
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_participant_api
        @participant = Participant.find_by(params[:external_id])
      end

      # Only allow a trusted parameter "white list" through.
      def participant_api_params
        params.require(:api_participant).permit(
          :external_id,
          prim_engine_date_of_birth_attributes: [:date_of_birth],
          prim_engine_name_attributes: [:first_name, :last_name, :middle_name, :prefix, :suffix],
          prim_engine_social_security_number_attributes: [:number],
          prim_engine_addresses_attributes: [:street_1, :street_2, :city, :state, :zip],
          prim_engine_emails_attributes: [:email, :primary],
          prim_engine_health_insurance_beneficiary_numbers_attributes: [:number, :name],
          prim_engine_ip_address_numbers_attributes: [:number],
          prim_engine_medical_record_numbers_attributes: [:number, :name, :description],
          prim_engine_phones_attributes: [:number, :primary, :name]
        )
      end
  end
end
