require 'spec_helper'

describe file(property['minecraft_server_home'] + '/ops.txt.converted') do
  it { should exist }
  it { should be_file }
  it { should be_mode 644 }
  property['minecraft_server_ops'].each do |name|
    it { should contain name }
  end
end
