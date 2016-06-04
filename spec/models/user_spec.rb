require 'rails_helper'

RSpec.describe User , type: :model do
      it { is_expected.to have_attribute :name }
      it { is_expected.to have_attribute :email }
      it { is_expected.to have_attribute :mobile }
      it { is_expected.to have_attribute :address1 }
      it { is_expected.to have_attribute :zip }
      it { is_expected.to have_attribute :city }
      it { is_expected.to have_attribute :latitude }
      it { is_expected.to have_attribute :longitude }
      it { is_expected.to have_attribute :presentation }

end
