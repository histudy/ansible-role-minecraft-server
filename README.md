minecraft-server
=========

Minecraftサーバーをセットアップします。

Role Variables
--------------

### minecraft_server_user

Minecraftサーバーを実行するユーザーを指定します。

```yaml
minecraft_server_user: minecraft
```

### minecraft_server_group

Minecraftサーバーを実行するグループを指定します。

```yaml
minecraft_server_group: minecraft
```

### minecraft_server_home

Minecraftサーバーのインストールディレクトリを指定します。

```yaml
minecraft_server_group: minecraft
```

### minecraft_server_max_memory

Minecraftサーバーの最大メモリサイズを指定します。

```yaml
minecraft_server_max_memory: 1024M
```

### minecraft_server_initial_memory

Minecraftサーバーの初期メモリサイズを指定します。

```yaml
minecraft_server_initial_memory: 1024M
```

### minecraft_server_version

インストールするMinecraftサーバーのバージョンを指定します。  
`latest`が指定されていた場合は最新の安定版をインストールします。

```yaml
minecraft_server_version: latest
```

**※`latest`が指定されていた場合は最適用時に、    
Minecraftサーバーのバージョンが変わってしまう可能性があるため注意してください。**

### minecraft_server_cfg

Minecraftサーバーの設定を定義します。  
設定内容の詳細は以下のURL等を参照してください。  
https://minecraft.server-memo.net/server-properties/

```yaml
minecraft_server_cfg:
  max_tick_time: 60000
  generator_settings:
  allow_nether: yes
  force_gamemode: no
  gamemode: 0
  enable_query: no
  player_idle_timeout: 0
  difficulty: 1
  spawn_monsters: yes
  op_permission_level: 4
  pvp: yes
  snooper_enabled: yes
  level_type: DEFAULT
  hardcore: no
  enable_command_block: no
  max_players: 20
  network_compression_threshold: 256
  resource_pack_sha1:
  max_world_size: 29999984
  server_port: 25565
  server_ip:
  spawn_npcs: yes
  allow_flight: no
  level_name: world
  view_distance: 10
  resource_pack:
  spawn_animals: yes
  white_list: no
  generate_structures: yes
  online_mode: yes
  max_build_height: 256
  level_seed:
  prevent_proxy_connections: no
  use_native_transport: yes
  motd: A Minecraft Server
  enable_rcon: no
```

### minecraft_server_whitelist

Minecraftサーバーにログインできるユーザーの一覧を指定します。  
ホワイトリストの設定が有効になっている場合のみ、指定された内容が反映されます。

```yaml
minecraft_server_whitelist:
  - foo
  - bar
```

### minecraft_server_ops

Minecraftサーバーの管理ユーザーを指定します。

```yaml
minecraft_server_ops:
  - foo
  - bar
```


Example Playbook
----------------

```yaml
- hosts: servers
  roles:
     - { role: minecraft-server }
```

License
-------

MIT
