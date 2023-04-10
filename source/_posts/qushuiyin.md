---
title: 聚合短视频解析去水印
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
summary: 短视频解析去水印
categories: 短视频
tags:
  - 短视频
---

##### 目前支持：皮皮虾/抖音/微视/快手/6间房/哔哩哔哩/微博/绿洲/度小视/开眼/陌陌/皮皮搞笑/全民k歌/逗拍/虎牙/新片场/哔哩哔哩/Acfun/美拍/西瓜视频/火山小视频/网易云Mlog/好看视频
##### 温馨提示：粘贴视频地址时无需删除文案 但如果视频链接正确但解析失败请删掉文案后重试
<br>
<br>
<div>
    <h3 style="display: inline-block;">视频地址：</h3>
    <input id="url" placeholder="请粘贴需要解析的视频链接支持文案直接复制" style="width: 60%;border: 1px solid;padding: 0 10px;" class="url-inp"/>
    <button  onclick="jiexi()" style="height: 50px;width: 100px;font-size: 23px;">解析</button>
</div>
<p id="status"></p>
<div id="videoinfo">
    
</div>

<br><br><br><br><br>


<script type="text/javascript">
  function jiexi(){
    var status = document.getElementById("status");
    var videoinfo  = document.getElementById("videoinfo");
    videoinfo.innerHTML="";
    status.innerText = "正在解析中...";
    fetch(`https://tenapi.cn/v2/video?url=${httpString(document.getElementById("url").value)}`).then((res)=>{ return res.json();}).then((res)=>{
        if(res.code !=200){
            status.innerText =res.msg;
            return;
        }
       videoinfo.innerHTML = `
        <p>视频标题：${res.data.title}</p>
        <p>作者：${res.data.author}</p>
        <p>视频链接：<a target="_blank" href="${res.data.url}">点击跳转</a></p>
        <iframe  style="width:70%;height: 500px;"  frameborder="no" allowtransparency="yes"  src="${res.data.url}"></iframe>`;
        status.innerText = "解析完毕。";
    }).finally(()=>{
      
    });
  }

    function httpString(s) {
        var reg = /(https?|http|ftp|file):\/\/[-A-Za-z0-9+&@#/%?=~_|!:,.;]+[-A-Za-z0-9+&@#/%=~_|]/g;
        s = s.match(reg);
        return s && s.length>0?s[0]:"";
    }
</script>