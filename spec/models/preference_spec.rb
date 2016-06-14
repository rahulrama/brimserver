require 'rails_helper'

describe Preference, type: :model do

  it { is_expected.to have_many :tags }
  # it { is_expected.to belong_to :user }

end
