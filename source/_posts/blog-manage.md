---
title: 博客管理
date: 2021-12-31
author: 
img: 
top: false
hide: false
cover: false
coverImg: 
password: af7c559b40d30a8285e509b7c4ba833824bbf7612a2241ea223fee08b804c05f
toc: false
mathjax: false
summary: ---------------------------------------------------------------------------------------------------------------------------------------------------------------
categories: 
tags:
  - 
---


# 文章访问加密方法（SHA256 ）：

<script src="https://cdn.bootcdn.net/ajax/libs/js-sha256/0.9.0/sha256.min.js"></script>

<input id="password" placeholder="请输入要加密的字符"/>
<button  onclick="strConvertSha256()">1生成SHA256密码</button>
<input id="sha256" placeholder="生成的密文"/>      

<div>
  <button  onclick="getAllKeyType()">查询所有KEYTYPE</button>
  <p id="allKeyType"></p>
  <table id="allkv"></table>
</div>
<script type="text/javascript">
  function strConvertSha256(){
    var str = this.document.getElementById("password").value;
    this.document.getElementById("sha256").value = sha256(str);
  }
  const url = "https://cf.meng912.xyz";
  function getAllKeyType(){
    fetch(url+"/allkvtype").then((ret)=>{
       for(var r of ret){
          this.document.getElementById("allKeyType").innerHTML += `<button onclick="queryKeyType('${r}')">${r}</button>`;
       }
    });
  }
  function queryKeyType(type){
    fetch(url+"/allkv/"+type).then((ret)=>{
          for(var r of ret){
              this.document.getElementById("allkv").innerHTML += `<tr><td>${r[0]}</td><td>${r[1]}</td></tr>`;
          }
        });
  }
</script>



# 评论系统([Valine](https://console.leancloud.cn/apps/zySaaEBgGPpLXNtHR9Y3wqTt-gzGzoHsz/storage/data/Comment  "LeanCloud") )：


# 域名平台([freenom](https://www.freenom.com/zh/index.html?lang=zh  "freenom") )：账号:****560@gmail.com  速度较慢 无需梯子   已废弃


# 域名平台2([godaddy](https://godaddy.com  "godaddy") )：账号:qq邮箱  托管在https://console.dnspod.cn （腾讯云域名管理）




