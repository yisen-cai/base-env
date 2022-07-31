## Basic env define for developing



DB



#### Registry



#### Message Broker



#### Usage

##### Environment init

~~~bash
$ mkdir kafka1 kafka2 kafka3 mysql redis mongo postgres
~~~



##### Basic commands

~~~bash
# Start services, [-d] means detach mode, which is optional.
$ docker-compose -f docker-compose.tools.yml -f docker-compose.db.yml -f docker-compose.msg.yml -f docker-compose.registry.yml up [-d] 


# Stop services.
$ docker-compose -f docker-compose.tools.yml -f docker-compose.db.yml -f docker-compose.msg.yml -f docker-compose.registry.yml stop

# Stop and clean up data inside directory, then prune those containers.
$ docker-compose -f docker-compose.tools.yml -f docker-compose.db.yml -f docker-compose.msg.yml -f docker-compose.registry.yml down
~~~







