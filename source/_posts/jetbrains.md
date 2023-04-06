---
title: Jetbrains 全家桶服务器激活
date: 
author: 
img: https://pic2.zhimg.com/v2-ca0419d3725c63b31f5aff6ef373c381_r.jpg?source=1940ef5c
top: true
hide: false
cover: true
coverImg: 
password: 
toc: false
mathjax: false
summary: Jetbrains 全家桶
categories: Jetbrains
tags:
  - Jetbrains
---


# Jetbrains 全家桶服务器激活

1. 首先打开这个网站：https://search.censys.io/   

    或者直接打开 https://search.censys.io/search?resource=hosts&sort=RELEVANCE&per_page=25&virtual_hosts=EXCLUDE&q=services.http.response.headers.location%3A+account.jetbrains.com%2Ffls-auth/

2. 然后在搜索框中输入：services.http.response.headers.location: account.jetbrains.com/fls-auth，点击搜索，网站会检索出很多 IP 地址

3. 任意点一个 IP 地址查看详情页，确保80/HTTP地址下的Status Code状态码为302，这时候复制出Detail这里的 IP 地址，作为我们的 License Server 地址
<img src="https://fastly.jsdelivr.net/gh/openHacking/static-files@main/uPic/eKrOrk.png">

4. 输入地址后点击激活
<img src="https://fastly.jsdelivr.net/gh/openHacking/static-files@main/uPic/HSziOB.png">

