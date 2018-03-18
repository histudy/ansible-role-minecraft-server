require 'spec_helper'

if property['minecraft_server_cfg']['white_list']
  describe file(property['minecraft_server_home'] + '/whitelist.json') do
    it { should exist }
    it { should be_file }
    it { should be_mode 644 }
    property['minecraft_server_whitelist'].each do |user|
      it { should contain "\"name\": \"#{user}\"" }
    end
  end
end
