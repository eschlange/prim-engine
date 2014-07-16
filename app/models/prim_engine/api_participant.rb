require 'active_resource'

module PrimEngine
  class ApiParticipant < ActiveResource::Base
    self.site = Rails.application.config.papi_url
  end

  def emails(scope = :all)
    ApiEmail.find(scope, :params => {:participant_id => self.id})
  end

  def email(id)
    emails(id)
  end
end
