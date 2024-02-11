require 'rails_helper'

RSpec.describe Todo, type: :model do
  #association tests
  #ToDo model has a 1:m relationship with the item model
  it { should have_many(:items).dependent(:destroy) }
  #validation tests
  #columns title & created_by are existant berofe saving
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:created_by) }
end
