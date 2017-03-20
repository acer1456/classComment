# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


300.times do
    name = "食品營養與健康"
    teacher = "郭素娥"
    vote = 3
    category = "通識-社會科學"
    semester = "103-2"
    comment = "上課內容很紮實，老師口條滿清楚的，認真聽可以學到很多營養學相關知識，還有一些日常生活中的飲食迷思
你覺得你在這堂課付出多少：8/10
你覺得你在這堂課收穫多少：8/10
你覺得你在這堂課付出與收穫的關係如何：undefined"
    detail = "無awdawdawdawdawdawdawdawdawdawdawdawdad"
    exam = "期中考試都考PPT內容及上課特別提醒的重點，並不難作業方式：
期末書面報告內容包括口頭報告的延伸整理(3頁)及2位同學報告的內容補充(2頁)，不得超過5頁word報告方式：
4-5位，報告內容為餐盒評析，針對三個便當餐盒評析其營養價值及優缺點，報告時間為5分鐘。
期末個人口頭報告的題目自訂，與食品營養相關，報告時間為5分鐘，報告完需繳交期末書面報告電子檔點名方式：
幾乎都會點名，不過有時上課時間不夠就不點了"


    Course.create(:name => name, :teacher => teacher, :vote => vote, :category => category, :semester => semester, :comment => comment, :detail => detail, :exam => exam)
end
