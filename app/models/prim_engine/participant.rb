# http://edgeapi.rubyonrails.org/classes/ActionController/StrongParameters.html

module PrimEngine
  class Participant
    has_one :prim_engine_date_of_birth, class_name: 'PrimEngine::DateOfBirth'
    has_one :prim_engine_name, class_name: 'PrimEngine::Name'
    has_one :prim_engine_social_security_number, class_name: 'PrimEngine::SocialSecurityNumber'

    has_many :prim_engine_address, class_name: 'PrimEngine::Address'
    has_many :prim_engine_email, class_name: 'PrimEngine::Email'
    has_many :prim_engine_health_insurance_beneficiary_numbers, :class_name => 'PrimEngine::HealthInsuranceBeneficiaryNumber'
    has_many :prim_engine_ip_address_numbers, :class_name => 'PrimEngine::IpAddressNumber'
    has_many :prim_engine_medical_record_numbers, :class_name => 'PrimEngine::MedicalRecordNumber'
    has_many :prim_engine_phones, :class_name => 'PrimEngine::Phone'
  end
end
