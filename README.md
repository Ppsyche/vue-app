# vue-project

> A Vue.js project

# 运行项目
clone项目到本地，进入项目文件夹，安装依赖
git clone https://github.com/Psychee/vue-app.git
cd vue-app
npm install
```
然后运行项目
npm run dev
```
最后打开浏览器，输入`localhost:8880`即可访问。效果图如下：

![](https://github.com/Psychee/vue-app/raw/master/gif/1.gif)
![](https://github.com/Psychee/vue-app/raw/master/gif/2.gif)
![](https://github.com/Psychee/vue-app/raw/master/gif/3.gif)
![](https://github.com/Psychee/vue-app/raw/master/gif/4.gif)
![](https://github.com/Psychee/vue-app/raw/master/gif/5.gif)
![](https://github.com/Psychee/vue-app/raw/master/gif/6.gif)
![](https://github.com/Psychee/vue-app/raw/master/gif/7.gif)
![](https://github.com/Psychee/vue-app/raw/master/gif/8.gif)
![](https://github.com/Psychee/vue-app/raw/master/gif/9.gif)
![](https://github.com/Psychee/vue-app/raw/master/gif/10.gif)

注意：由于接口为免费版，一分钟最多访问40次，请勿过于频繁的操作。

# 路由
应用包括以下n个路由
* `/movie/hot` 首页，显示正在上映的十条电影信息，下拉加载更多；
* `/movie/top250` 显示评分最高的十条电影信息，下拉加载更多;
* `/movie/coming` 显示即将上映的十条电影信息，下拉加载更多;
* `/movie/movie_one/:id` 电影详情页面；
* `/book` 包含4种标签，只显示各个标签的前6条数据（由于接口访问次数有限，下拉展示更多标签功能已删除）；
* `/book/book_more/:name` 显示当前标签下的十条电影信息，下拉加载更多;
* `/book/book_one/:id` 图书详情页面；
* `/photo` 图片页面，以瀑布流的方式展示多张图片;
* `/photo/photo_detail/:index` 显示大图;
* `/search/suggest` 搜索页面，搜索框+推荐的八条电影名称和八条图书名称。
* `/search/search_movie/:name` 搜索电影列表。
* `/search/search_book/:name` 搜索图书列表。
* ` path:'/user` 用户主页。
* ` /user/user_set` 设置页。
* ` /user/user_me` 个人信息页。


