var express = require('express');
var router = express.Router();
var request = require('request');
var session = require('express-session');
/* GET home page. */

router.all('*', function(req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "X-Requested-With");
    res.header("Access-Control-Allow-Methods","PUT,POST,GET,DELETE,OPTIONS");
    res.header("X-Powered-By",' 3.2.1')
    res.header("Content-Type", "application/json;charset=utf-8");
    next();
});


router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

router.get('/insert_user', function(req, res, next) {
    var name=req.query.name;
    var tel=req.query.tel;
    var psd=req.query.psd;
    // console.log(name);
    request.get('http://127.0.0.1/backstage/user/insert_user?name='+name+"&tel="+tel+"&psd="+psd, function (error, response, body) {
        if (!error && response.statusCode == 200) {
            console.log(body);
            res.json(body);
        }
    });
});

router.get('/login_user', function(req, res, next) {
    var tel=req.query.tel;
    var psd=req.query.psd;
    request.get('http://127.0.0.1/backstage/user/login_user?tel='+tel+"&psd="+psd, function (error, response, body) {
        if (!error && response.statusCode == 200) {
            console.log(body);
            // res.json(body);
            req.session.id=body;
            var data={
              "body":body,
              "id":req.session.id
            };
            console.log(data);
            res.json(data);
        }
    });
});

router.get('/user_by_id', function(req, res, next) {
    var id=req.query.id;
    request.get('http://127.0.0.1/backstage/user/user_by_id?id='+id, function (error, response, body) {
        if (!error && response.statusCode == 200) {
            console.log(body);
            res.json(body);
        }
    });
});

router.get('/change_name', function(req, res, next) {
    var id=req.query.id;
    var name=req.query.name;
    // console.log(name);
    request.get('http://127.0.0.1/backstage/user/change_name?id='+id+"&name="+name, function (error, response, body) {
        if (!error && response.statusCode == 200) {
            console.log(body);
            res.json(body);
        }
    });
});

router.get('/change_sex', function(req, res, next) {
    var id=req.query.id;
    var sex=req.query.sex;
    // console.log(sex);
    request.get('http://127.0.0.1/backstage/user/change_sex?id='+id+"&sex="+sex, function (error, response, body) {
        if (!error && response.statusCode == 200) {
            console.log(body);
            res.json(body);
        }
    });
});

router.get('/change_email', function(req, res, next) {
    var id=req.query.id;
    var email=req.query.email;
    // console.log(email);
    request.get('http://127.0.0.1/backstage/user/change_email?id='+id+"&email="+email, function (error, response, body) {
        if (!error && response.statusCode == 200) {
            console.log(body);
            res.json(body);
        }
    });
});


module.exports = router;
