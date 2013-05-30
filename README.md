Redis_Control_Scripts
=====================

The Scenario is once several redis instances set up on one server.  
This scripts can control all the instance by one command and also can be set to service.  
And this script can set the redis pid to one certain core when the instances number is smaller than the core number.  
This fuction can run on CentOS 6.3 no other issue has been tested.

### Usage  
`Usage:redis  start all|stop all|restart all|start <port_number>|stop <port_number>|restart <port_number>`  

### configure the script  
1. define the instance number by set `REDISPORT`, usally we use the redis port by sequence  
   In this case redis 6379 to 6387 use aof, redis 6388 to 6392 use save, redis 6392 to 6395 use both
2. make sure the redis conf, redis log dir, redis data dir is ready  
   In this case, the redis conf is in `/opt/redis/etc`  
   the redis data dir is `/data/redis/redis_<port>`  
   the redis log  dir is `/data/log/redis/`    
3. just run it.  
