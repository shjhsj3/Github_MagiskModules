# GitHub520

<p align="center">
<a href="https://hellogithub.com/repository/d05ff820bf36470581c02cda5cbd17ea" target="_blank"><img src="https://api.hellogithub.com/v1/widgets/recommend.svg?rid=d05ff820bf36470581c02cda5cbd17ea&claim_uid=8MKvZoxaWt" alt="Featured｜HelloGitHub" style="width: 250px; height: 54px;" width="250" height="54" /></a><br>
😘 让你“爱”上 GitHub，解决访问时图裂、加载慢的问题。
</p>


## 一、介绍
对 GitHub 说"爱"太难了：访问慢、图片加载不出来。

**本模块仅用于安卓设备 你需要有ROOT权限 还需要有与magisk相似的root管理器**

通过修改本地 hosts 文件，试图解决：
- GitHub 访问速度慢的问题
- GitHub 项目中的图片显示不出的问题

让你"爱"上 GitHub。



*注：* 本项目还处于测试阶段，仅在本机测试通过，如有问题欢迎提issues
[如果是关于模块的问题请不要给521xueweihan提issues]


## 二、使用方法
下载模块-安装本模块-重启设备-在Module界面点击GitHub520模块的'Action'按钮配置-重启设备-享受


## 三、模块做了什么
备份原有hosts-当使用者点击GitHub520模块的'Action'按钮-下载最新的hosts-在TMP进行处理‘将下载的hosts内容追加在备份的原hosts’-将处理过的hosts映射到它该在的地方


## 四、效果对比
之前的样子：

![](./img/old.png)

修改完 hosts 的样子：

![](./img/new.png)


## 五、需注意
本模块的备份是直接读取复制 它可能备份别的模块映射的hosts

## 声明
<a rel="license" href="https://creativecommons.org/licenses/by-nc-nd/4.0/deed.zh"><img alt="知识共享许可协议" style="border-width: 0" src="https://licensebuttons.net/l/by-nc-nd/4.0/88x31.png"></a><br>本作品采用 <a rel="license" href="https://creativecommons.org/licenses/by-nc-nd/4.0/deed.zh">署名-非商业性使用-禁止演绎 4.0 国际</a> 进行许可。
