
# 📸 Instagram Data Analytics 📸

Instagram is one of the most widely used social media platform in the current time and with this heavy usage comes a ton of data that is there to be analysed.


![Logo](https://www.shutterstock.com/image-photo/bangkok-thailand-may-14-2016-260nw-419396578.jpg)


## 🚀 Project Requirements

The Instagram MARKETING TEAM and the INVESTOR TEAMS requires the Data Analysts in the company to give them insights of the Users on different parameters.

#### 💡 MARKETING TEAM REQUIREMENTS:

- Want to reward the 5 most loyal/oldest Instagram Users.
- Send reminder mails to the Inactive users who never posted.
- Declare a user as winner who has most likes on single photo.
- Use most popular hashtag for a promotional brand.
- Launch an AD Campaign on the most active day of the week.

#### 💡 INVESTING TEAM REQUIREMENTS:

- Average User Engagement on the platform.
- Identify the fake/bot accounts on the platform.


## 💾 Database Design

The database comrises of seven tables that includes:

- Users Table having Users Data
- Photos Table having data of photos uploaded by users.
- Comments Table having data of comments made by users.
- Likes Table having data of likes given by users on photos.
- Follows Table having data of the followers and followee.
- Tags Table having tags used by the users on the photos.
- Photo_Tags is the Junction Table of photos and tags.





![App Screenshot](https://github.com/AnalystDaipayan/Dump/blob/main/Screenshots/DataBaseModel.sql.png?raw=true)


## ⚒️ Tool Used

![Logo](https://www.freepnglogos.com/uploads/logo-mysql-png/logo-mysql-mysql-logo-png-images-are-download-crazypng-21.png)




## 🎯 Approach

- [Top 5 Oldest Instagram Users](https://github.com/AnalystDaipayan/Instagram_Data_Analytics/blob/main/SQLSolution/InstagramAnalysis.sql)
Analysed this with the help of the Users table, by arranging the data with the help of the date in the ascending order and limitinf itto 5.

- [Users Who Never Posted](https://github.com/AnalystDaipayan/Instagram_Data_Analytics/blob/main/SQLSolution/InstagramAnalysis.sql)
Analysed this by Joining two tables i.e. Users and Photos particularly by Left Join as it gave the data of all the users and was able to seggregate the required users by those whose photo_id was NULL.

- [User with the most liked Single Photo](https://github.com/AnalystDaipayan/Instagram_Data_Analytics/blob/main/SQLSolution/InstagramAnalysis.sql)
Analysed this by using subquery where first found the photo_id which had the maximum likes by using COUNT and GROUP BY Functions and then did a INNER JOIN with the WHERE condition as the result of subquery.

- [Top 5 most used Hashtags](https://github.com/AnalystDaipayan/Instagram_Data_Analytics/blob/main/SQLSolution/InstagramAnalysis.sql)
Analysed this with the help of tags and photo tags table by again using a subquery where found the tag_id from the tag table first and then used it as a where condition in Photo_tags table.

- [Most Active Day](https://github.com/AnalystDaipayan/Instagram_Data_Analytics/blob/main/SQLSolution/InstagramAnalysis.sql)
Analysed this with the help of a Date Function i.e. DAYNAME(), which extracted the name of the week day from the creation date in the users table and sorted it by the GROUP BY function.

- [Average User Engagement](https://github.com/AnalystDaipayan/Instagram_Data_Analytics/blob/main/SQLSolution/InstagramAnalysis.sql)
Analysed this by doing a calculation by Total Photos/Total Users

- [Spotting the Fake/Bot Accounts](https://github.com/AnalystDaipayan/Instagram_Data_Analytics/blob/main/SQLSolution/InstagramAnalysis.sql)
Analysed this by the concept of Multiple subquery where first tried to find the total count of photos and then putting it in the where condition to see which user has liked that many times.
