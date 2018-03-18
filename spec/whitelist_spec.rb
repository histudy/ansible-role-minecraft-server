require 'spec_helper'

if property['minecraft_server_cfg']['white_list']
  describe file(property['minecraft_server_home'] + '/white-list.txt.converted') do
    it { should exist }
    it { should be_file }
    it { should be_mode 644 }
    property['minecraft_server_whitelist'].each do |name|
      it { should contain name }
    end
  end
end
