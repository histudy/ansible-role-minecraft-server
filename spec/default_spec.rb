require 'spec_helper'

describe group(property['minecraft_server_group']) do
  it { should exist }
end

describe user(property['minecraft_server_user']) do
  it { should exist }
  it { should belong_to_group property['minecraft_server_group'] }
  it { should belong_to_primary_group property['minecraft_server_group'] }
  it { should have_home_directory property['minecraft_server_home'] }
end

describe file(property['minecraft_server_home'] + '/minecraft_server.jar') do
  it { should exist }
  it { should be_symlink }
  it { should be_owned_by property['minecraft_server_user'] }
  it { should be_grouped_into property['minecraft_server_group'] }
end

describe file(property['minecraft_server_home'] + '/eula.txt') do
  it { should exist }
  it { should be_file }
  it { should be_mode 644 }
  it { should contain 'eula=true' }
  it { should be_owned_by property['minecraft_server_user'] }
  it { should be_grouped_into property['minecraft_server_group'] }
end

describe file('/lib/systemd/system/minecraft-server.service') do
  it { should exist }
  it { should be_file }
end

describe service('minecraft-server') do
  it { should be_enabled }
  it { should be_running }
end

describe port(25565) do
  it { should be_listening }
end
