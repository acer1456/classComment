
選課世新 SHU Course
=============
這是一個線上課程心得分享平台，能夠很簡單地讓同學們分享對於課程的觀感與心得！

版本
-------------
Beta 1.0

功能
-------------
* 課程（顯示）
* FB 登入
* 後台（新增、刪除、修改、顯示）

使用的 Function
-------------
* Bootstrap 4 aplha
* ajax for CRUD
* Devise
* Ｏmniauth-facebook
* settingslogic 管理key
* DataTables 使用前端 search and flitter

使用此專案方法
-------------
請先使用以下方法下載至本地端：<br>
<tt>$ git clone https://github.com/acer1456/classComment.git</tt>

進入專案資料夾：<br>
<tt>$ cd classComment</tt>

進行 migrate 建立資料庫：<br>
<tt>$ rake db:migrate</tt>

修改 config/application.yml 檔案：<br>
  <tt>
  app_name: "輸入你的APP名稱"<br>
  facebook_app_id: "輸入你的key"<br>
  facebook_secret: "輸入你的key"<br>
  domain: "輸入你的domain"<br>
  </tt>

打開伺服器即可開始測試使用：<br>
<tt>$ rails s</tt>

== 感謝

@Kevin 共同製作
