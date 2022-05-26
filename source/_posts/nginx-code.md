---
title: nginx 常用命令及配置
date: 
author: 
img: 
top: true
hide: false
cover: false
coverImg: 
password: 
toc: false
mathjax: false
summary: Nginx，我们需要掌握一些基本的操作命令，比如：启动、停止Nginx服务，重新载入Nginx等，下面我就进行一些简单的介绍
categories: Nginx
tags:
  - Nginx
---

# Windows下Nginx的启动、停止、重启等命令

**1、启动：** 

```bash
start nginx
```

**2、停止：** 

```bash
nginx.exe -s stop
```

或者

```bash
nginx.exe -s quit
```

**3、重新载入Nginx：** 

```bash
nginx.exe -s reload
```

**4、重新打开日志文件：** 

```bash
nginx.exe -s reopen
```



# 常用配置



**1.反向代理配置端口**

```
# 配置 只有xxx.xxx.com  域名访问 80端口 ，反向代理到 本机的81端口。
server {    
    listen       80;
    server_name  xxx.xxx.com;
    location / {
    proxy_pass http://127.0.0.1:81;
    	index  index.html index.htm index.jsp;
    }
}

```

**2、SSL证书配置**

```
    server {
        listen       443 ssl;
        server_name  xxx.xxx.com;
		ssl_certificate cert/xxx-xxx.com.pem;
		ssl_certificate_key cert/xxx-xxx.com.key;
		ssl_session_cache    shared:SSL:1m;
		ssl_session_timeout  5m;
		ssl_ciphers  ECDHE-RSA-AES128-GCM-SHA256:ECDHE:ECDH:AES:HIGH:!NULL:!aNULL:!MD5:!ADH:!RC4;
		ssl_prefer_server_ciphers  on;
		ssl_protocols TLSv1 TLSv1.1 TLSv1.2;
	    location / {  
			proxy_http_version 1.1;
			proxy_set_header Host $host:443;
            proxy_set_header X-Forwarded-For $remote_addr;
			proxy_set_header X-Forwarded-Scheme $scheme;
			proxy_set_header X-Forwarded-Proto  $scheme;
            proxy_pass http://127.0.0.1;
        }
    }

```

**3、配置文件目录映射**

```
	server {    
        listen       80;
        server_name  xxx.xxxx.com;
        location / {
			root H:/public-list/; # H:/public-list/ 指定实际目录绝对路径
			autoindex on; # 开启目录浏览功能
			autoindex_exact_size on;  # 显示出文件的确切大小，单位是bytes
			autoindex_localtime on;  # 显示的文件时间为文件的服务器时间
		}
    }
```

