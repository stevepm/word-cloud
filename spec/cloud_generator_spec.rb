require 'spec_helper'
require_relative '../lib/cloud_generator'

describe CloudGenerator do

  it 'can output a cloud based on input' do
    input = {
      "Ila Huels" => [
        "OPTIMIZE"
      ]}
    output = {"optimize" => {:count => 1, :people => ["Ila Huels"]}}
    cloud = CloudGenerator.new(input)
    expect(cloud.generate).to eq(output)
  end

  it 'can take multiple people and output a more complex cloud' do
    input = {
      "Ila Huels" => [
        "OPTIMIZE", "Test"
      ],
      "Jon Alaw" => ["optimize", 'test']}
    output = {"optimize" => {:count => 2, :people => ["Ila Huels", "Jon Alaw"]},
    "test" => {:count => 2, :people => ["Ila Huels", "Jon Alaw"]}}
    cloud = CloudGenerator.new(input)
    expect(cloud.generate).to eq(output)
  end

  it 'can output a very complex cloud' do

  end
end