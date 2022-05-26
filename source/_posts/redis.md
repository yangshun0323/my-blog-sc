---
title: Redis
date: 
author: 
img: 
top: false
hide: false
cover: true
coverImg: 
password: 
toc: false
mathjax: false
summary: Redis
categories: Redis
tags:
  - Redis
---



**启动redis (指定配置文件运行)**
```shell
./redis-server   ./redis.conf
```


**查看redis运行状态、进程**

```shell
ps -ef | grep redis
```



**连接redis**

```shell
./redis-cli -h 127.0.0.1 -p 6379
```



**选中第N个库**

选中第二个库

```shell
select 2
```

给第二个库插入一个key=name ,value=张三

```
set name 张三
```

![](https://s2.loli.net/2022/01/15/Kqkxo2dGLmgyhwP.png)

