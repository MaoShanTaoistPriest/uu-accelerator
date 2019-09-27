// app.js 服务器端项目
// 1.下载第三方模块
// 2.将第三方的模块引入到当前程序中
const express = require('express');
const session = require('express-session');
const cors = require('cors');
const mysql = require('mysql');
// 3.创建数据库连接池
var pool = mysql.createPool({
  host: '127.0.0.1',
  port: '3306',
  user: 'root',
  password: '',
  database: 'uu', //连接后要使用的数据库
  connectionLimit: 15 //设置连接池的大小
});
// 4.创建web服务器，监听8088端口
var server = express();
server.listen(5050);
// 5.跨域处理
server.use(cors({
  origin: ["http://127.0.0.1:8088", "http://localhost:8088"],
  credentials: true
}))
// 配置session，一定要在所有的请求之前
server.use(session({
  //安全的字符串
  secret: "128位字符串",
  //每次请求是否更新原有数据 
  resave: true,
  //保存初始化数值  
  saveUninitialized: true
}))
// 配置静态目录
server.use(express.static("public"));


// header模块获取三个图标的两种状态的数据地址
server.get("/headerImg", (req, res) => {
  var sql = "SELECT normal,hover FROM uu_header_img";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    if (result.length == 0) {
      res.send({
        code: "-1",
        msg: "查询有误"
      });
    } else {
      res.send({
        code: "1",
        msg: "查询成功",
        data: result
      });
    }
  })
})
// footer模块获取三个图标的两种状态的数据地址
server.get("/footerImg", (req, res) => {
  var sql = "SELECT normal,hover FROM uu_footer_img";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    if (result.length == 0) {
      res.send({
        code: "-1",
        msg: "查询有误"
      });
    } else {
      res.send({
        code: "1",
        msg: "查询成功",
        data: result
      });
    }
  })
})

// index模块的topbanner数据的获取
server.get("/indexTopBanner", (req, res) => {
  var sql = "SELECT id,big,small,down,msg1,msg2 FROM uu_index_topbanner";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    if (result.length == 0) {
      res.send({
        code: "-1",
        msg: "查询有误"
      });
    } else {
      res.send({
        code: "1",
        msg: "查询成功",
        data: result
      });
    }
  })
});

// index模块的版本下载数据的获取
server.get("/indexBbxz", (req, res) => {
  var sql = "SELECT id,title,btn,normal,hover FROM uu_index_bbxz";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    if (result.length == 0) {
      res.send({
        code: "-1",
        msg: "查询有误"
      });
    } else {
      res.send({
        code: "1",
        msg: "查询成功",
        data: result
      });
    }
  })
});

// games模块的PC游戏数据的获取
server.get("/gamePc", (req, res) => {
  var sql = "SELECT id,gname FROM uu_games_pc";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    if (result.length == 0) {
      res.send({
        code: "-1",
        msg: "查询有误"
      });
    } else {
      res.send({
        code: "1",
        msg: "查询成功",
        data: result
      });
    }
  })
});
// games模块的Phone游戏数据的获取
server.get("/gamePhone", (req, res) => {
  var sql = "SELECT id,gname FROM uu_games_phone";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    if (result.length == 0) {
      res.send({
        code: "-1",
        msg: "查询有误"
      });
    } else {
      res.send({
        code: "1",
        msg: "查询成功",
        data: result
      });
    }
  })
});
// games模块的Host游戏数据的获取
server.get("/gameHost", (req, res) => {
  var sql = "SELECT id,gname FROM uu_games_host";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    if (result.length == 0) {
      res.send({
        code: "-1",
        msg: "查询有误"
      });
    } else {
      res.send({
        code: "1",
        msg: "查询成功",
        data: result
      });
    }
  })
});
// channel模块的会员时间数据的获取
server.get("/channelSj", (req, res) => {
  var sql = "SELECT id,renewal,price,unit FROM uu_channel_hysj";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    if (result.length == 0) {
      res.send({
        code: "-1",
        msg: "查询有误"
      });
    } else {
      res.send({
        code: "1",
        msg: "查询成功",
        data: result
      });
    }
  })
});
// box模块的套餐价格数据的获取
server.get("/boxPackage", (req, res) => {
  var sql = "SELECT id,img FROM uu_box_package";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    if (result.length == 0) {
      res.send({
        code: "-1",
        msg: "查询有误"
      });
    } else {
      res.send({
        code: "1",
        msg: "查询成功",
        data: result
      });
    }
  })
});
// contact模块的合作声明数据的获取
server.get("/contactCooperation", (req, res) => {
  var sql = "SELECT id,toptitle,bottomtitle FROM uu_contact_cooperation";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    if (result.length == 0) {
      res.send({
        code: "-1",
        msg: "查询有误"
      });
    } else {
      res.send({
        code: "1",
        msg: "查询成功",
        data: result
      });
    }
  })
});
// contact模块的具体业务联系人数据的获取
server.get("/contactContact", (req, res) => {
  var sql = "SELECT id,title,cname,contact FROM uu_contact_contact";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    if (result.length == 0) {
      res.send({
        code: "-1",
        msg: "查询有误"
      });
    } else {
      res.send({
        code: "1",
        msg: "查询成功",
        data: result
      });
    }
  })
});