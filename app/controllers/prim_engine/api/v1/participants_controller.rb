require_dependency "prim_engine/application_controller"

module PrimEngine
  class Api::V1::ParticipantsController < ApplicationController
    before_action :set_participant, only: [:show, :edit, :update, :destroy]

    skip_before_filter :verify_authenticity_token

    def index
      @participants = Participant.all
      respond_to do |format|
        format.json { render json: @participants }
      end
    end

    def show
      respond_to do |format|
        format.json { render json: @participant }
      end
    end

    def create
      @participant = Participant.new(participant_params)
      @participant.external_id = Hashids.new('TODO:salt_here').encrypt(@participant.id)

      respond_to do |format|
        if @participant.save
          format.json { render json: @participant, status: :created }
        else
          format.json { render json: @participant.errors, status: :unprocessable_entity }
        end
      end
    end

    def update
      respond_to do |format|
        if @participant.update(participant_params)
          format.json { head :no_content, status: :ok }
        else
          format.json { render json: @participant.errors, status: :unprocessable_entity }
        end
      end
    end

    def destroy
      respond_to do |format|
        if @participant.destroy
          format.json { head :no_content, status: :ok }
        else
          format.json { render json: @participant.errors, status: :unprocessable_entity }
        end
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_participant
        @participant = Participant.find_by(external_id: params[:external_id])
      end

      # Only allow a trusted parameter "white list" through.
      def participant_params
        params.require(:participant).permit(
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
