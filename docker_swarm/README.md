Stacks > Services > Nodes > Containers.

### Prerequisites
```bash
docker swarm init # for manager node
docker swarm join ... # for worker node, use full command provided by manager
```

### Stack level

```bash
docker stack deploy nodeapp -c docker-compose.yml
docker stack ls
docker stack services nodeapp
docker stack ps nodeapp
```

### Service level

```bash
docker service ls
docker service ps nodeapp
docker service logs --tail 1 nodeapp
```

### Node level

```bash
docker node ls
docker node update --availability=drain _insert_node_name_here_
docker node update --availability=active _insert_node_name_here_
```
