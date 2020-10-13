# bazel_remote_cache

Distribute bazel remote cache server disk io load between machines.

#### Usage: Initialization


##### Manager

```bash
docker swarm init
```

##### Worker
```bash
docker swarm join ... # use command output when running docker swarm init on the manager node
```

#### Usage: Deployment

```bash
docker stack deploy nodeapp -c docker-compose.yml
```
