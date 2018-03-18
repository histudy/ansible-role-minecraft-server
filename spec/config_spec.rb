require 'spec_helper'

describe file(property['minecraft_server_home'] + '/server.properties') do
  it { should exist }
  it { should be_file }
  it { should be_mode 644 }
  it { should be_owned_by property['minecraft_server_user'] }
  it { should be_grouped_into property['minecraft_server_group'] }
  minecraft_server_cfg = property['minecraft_server_cfg']
  it { should contain "max-tick-time=#{minecraft_server_cfg['max_tick_time']}" }
  it { should contain "generator-settings=#{minecraft_server_cfg['generator_settings']}" }
  allow_nether_flg = minecraft_server_cfg['allow_nether'] ? 'true' : 'false'
  it { should contain "allow-nether=#{allow_nether_flg}" }
  force_gamemode_flg = minecraft_server_cfg['force_gamemode'] ? 'true' : 'false'
  it { should contain "force-gamemode=#{force_gamemode_flg}" }
  it { should contain "gamemode=#{minecraft_server_cfg['gamemode']}" }
  enable_query_flg = minecraft_server_cfg['enable_query'] ? 'true' : 'false'
  it { should contain "enable-query=#{enable_query_flg}" }
  it { should contain "player-idle-timeout=#{minecraft_server_cfg['player_idle_timeout']}" }
  it { should contain "difficulty=#{minecraft_server_cfg['difficulty']}" }
  spawn_monsters_flg = minecraft_server_cfg['spawn_monsters'] ? 'true' : 'false'
  it { should contain "spawn-monsters=#{spawn_monsters_flg}" }
  it { should contain "op-permission-level=#{minecraft_server_cfg['op_permission_level']}" }
  pvp_flg = minecraft_server_cfg['pvp'] ? 'true' : 'false'
  it { should contain "pvp=#{pvp_flg}" }
  snooper_enabled_flg = minecraft_server_cfg['snooper_enabled'] ? 'true' : 'false'
  it { should contain "snooper-enabled=#{snooper_enabled_flg}" }
  it { should contain "level-type=#{minecraft_server_cfg['level_type']}" }
  hardcore_flg = minecraft_server_cfg['hardcore'] ? 'true' : 'false'
  it { should contain "hardcore=#{hardcore_flg}" }
  enable_command_block_flg = minecraft_server_cfg['enable_command_block'] ? 'true' : 'false'
  it { should contain "enable-command-block=#{enable_command_block_flg}" }
  it { should contain "max-players=#{minecraft_server_cfg['max_players']}" }
  it { should contain "network-compression-threshold=#{minecraft_server_cfg['network_compression_threshold']}" }
  it { should contain "resource-pack-sha1=#{minecraft_server_cfg['resource_pack_sha1']}" }
  it { should contain "max-world-size=#{minecraft_server_cfg['max_world_size']}" }
  it { should contain "server-port=#{minecraft_server_cfg['server_port']}" }
  it { should contain "server-ip=#{minecraft_server_cfg['server_ip']}" }
  spawn_npcs_flg = minecraft_server_cfg['spawn_npcs'] ? 'true' : 'false'
  it { should contain "spawn-npcs=#{spawn_npcs_flg}" }
  allow_flight_flg = minecraft_server_cfg['allow_flight'] ? 'true' : 'false'
  it { should contain "allow-flight=#{allow_flight_flg}" }
  it { should contain "level-name=#{minecraft_server_cfg['level_name']}" }
  it { should contain "view-distance=#{minecraft_server_cfg['view_distance']}" }
  it { should contain "resource-pack=#{minecraft_server_cfg['resource_pack']}" }
  spawn_animals_flg = minecraft_server_cfg['spawn_animals'] ? 'true' : 'false'
  it { should contain "spawn-animals=#{spawn_animals_flg}" }
  white_list_flg = minecraft_server_cfg['white_list'] ? 'true' : 'false'
  it { should contain "white-list=#{white_list_flg}" }
  generate_structures_flg = minecraft_server_cfg['generate_structures'] ? 'true' : 'false'
  it { should contain "generate-structures=#{generate_structures_flg}" }
  online_mode_flg = minecraft_server_cfg['online_mode'] ? 'true' : 'false'
  it { should contain "online-mode=#{online_mode_flg}" }
  it { should contain "max-build-height=#{minecraft_server_cfg['max_build_height']}" }
  it { should contain "level-seed=#{minecraft_server_cfg['level_seed']}" }
  prevent_proxy_connections_flg = minecraft_server_cfg['prevent_proxy_connections'] ? 'true' : 'false'
  it { should contain "prevent-proxy-connections=#{prevent_proxy_connections_flg}" }
  use_native_transport_flg = minecraft_server_cfg['use_native_transport'] ? 'true' : 'false'
  it { should contain "use-native-transport=#{use_native_transport_flg}" }
  it { should contain "motd=#{minecraft_server_cfg['motd']}" }
  enable_rcon_flg = minecraft_server_cfg['enable_rcon'] ? 'true' : 'false'
  it { should contain "enable-rcon=#{enable_rcon_flg}" }
end
