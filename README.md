# 西二JAVA第三轮作业
## 031802219 林璟
<del>明明是数据库的作业被我写成了一个web项目，感觉有些喧宾夺主www</del>

这是一个基于springboot+vue的前后端分离项目(其实菜鸡完全不会写前端，基本都是copy的模板)，前后端直接采用ajax进行通信，后端部署在tomcat上，前端可以部署在nginx上

项目展示地址:http://106.14.209.11/weather/

项目所用技术：
- 后端：maven + springboot + mybatis + mysql + httpclients(调用远程接口) + fastjson(解析json) + lombok(简化实体类的编写)(最后这俩好像争议挺大的，但用起来真爽)
- 前端：vue(渲染页面) + axios(前后端通信) + bootstrap(ui)

本项目实现了调用远程接口更新数据库天气数据，并且在前端实现了查询和更新数据功能。
其中，更新数据的方式共3种：
- 前端点击更新按钮
- 项目启动时自动更新数据
- 每天0/8/16点更新数据

数据库设计：
数据库文件在sql目录下(sql文件由navicat自动导出),
分为两张表
- city：存储城市名和对应的adcode
- weather：存储天气数据



项目代码结构(一些常用结构略)
- pojo:实体类
- mapper:映射器
- service：
    - InitServiceImpl 项目启动时自动调用，更新数据
    - TimeTaskServiceImpl 定时任务，每天定时更新数据库
- controller
- utils





