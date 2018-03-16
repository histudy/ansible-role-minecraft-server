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
