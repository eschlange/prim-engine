require 'active_resource'

module PrimEngine
  class ApiParticipant < ActiveResource::Base
    self.site = Rails.application.papi_url
  end
end
