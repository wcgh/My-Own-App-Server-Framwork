-- user
insert into user(email,phone,username,imagesrc) values ('821272852@qq.com','13407138970','wencai','default.jpg');
-- shop
insert into shop(shopname,imagesrc,shopkeywords,uid,longtitude,latitude) values('mike shop','default.jpg','key1,key2,key3','1','11.112','23.233');
insert into shop(shopname,imagesrc,shopkeywords,uid,longtitude,latitude) values('chengs shop','default.jpg','key1,key2,key3','2','13.112','234.233');
insert into shop(shopname,imagesrc,shopkeywords,uid,longtitude,latitude) values('liu shop','default.jpg','key1,key2,key3','3','123.112','134.233');
insert into shop(shopname,imagesrc,shopkeywords,uid,longtitude,latitude) values('zhang shop','default.jpg','key1,key2,key3','4','223.112','34.233');
insert into shop(shopname,imagesrc,shopkeywords,uid,longtitude,latitude) values('ma shop','default.jpg','key1,key2,key3','5','34.112','32.233');
insert into shop(shopname,imagesrc,shopkeywords,uid,longtitude,latitude) values('e shop','default.jpg','key1,key2,key3','6','234.112','332.233');
-- goods
insert into goods(goodsname,classid,price,goodsstateid,shopid,imagesrc) values('pen','1','123.23','1','2','default.jpg');

-- state
insert into state(stateid,statename,stateinfo)values('1','上传','商品已上传，未上架');
insert into state(stateid,statename,stateinfo)values('2','上架','已上架,可以被购买');
-- class
insert into class(classid,classname,fatherid,unit) values(1,'电器',0,'台');
insert into class(classid,classname,fatherid,unit) values(2,'水果',0,"斤");
insert into class(classid,classname,fatherid,unit) values(3,'蔬菜',0,"斤");
insert into class(classid,classname,fatherid,unit) values(4,'日常用品',0,"个");
insert into class(classid,classname,fatherid,unit) values(5,'食品',0,"个");
