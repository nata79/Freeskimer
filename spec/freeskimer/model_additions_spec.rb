require 'spec_helper'

class Key < SuperModel::Base
  include ActiveModel::MassAssignmentSecurity
  extend Freeskimer::ModelAdditions
  attr_accessible :abstract_key
  
  def abstract_key
    @abstract_key
  end
  
  def abstract_key=(value)
    @abstract_key = value
  end
  
  freeskim :numbers,  to: :abstract_key
  freeskim :stars,    to: :abstract_key
  
end

describe Freeskimer::ModelAdditions do  
  
  it 'gets and sets freeskim attrs' do
    k = Key.new
    k.numbers = [1,2,3,4,5,6,7,8,9]
    k.stars = [1,2]
    k.numbers.should eq [1,2,3,4,5,6,7,8,9]
    k.stars.should eq [1,2]
  end  
  
end
