module PrimEngine
  class ApiParticipant < ActiveResource::Base
    validates :email, :presence => true
    validates_uniqueness_of :email
  end
end
