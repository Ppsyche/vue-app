var express = require('express');
var router = express.Router();
var request = require('request');
// var request = require('superagent');
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
    request.post({url:'http://127.0.0.1/backstage/user/insert_user', form: {name:name,tel:tel,psd:psd}}, function (error, response, body) {
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

router.get('/user_and_collect', function(req, res, next) {
    var id=req.query.id;
    request.get('http://127.0.0.1/backstage/user/user_and_collect?id='+id, function (error, response, body) {
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
    request.post({url:'http://127.0.0.1/backstage/user/change_name', form: {id:id,name:name}}, function (error, response, body) {
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

router.get('/find_movie', function(req, res, next) {
    var m_id=req.query.m_id;
    var m_name=req.query.m_name;
    var m_summary=req.query.m_summary;
    var m_rating=req.query.m_rating;
    var m_img=req.query.m_img;
    request.post({url:'http://127.0.0.1/backstage/movie/find_movie', form: {m_id:m_id,m_name:m_name,m_summary:m_summary,m_rating:m_rating,m_img:m_img}}, function (error, response, body) {
        if (!error && response.statusCode == 200) {
            console.log(body);
            res.json(body);
        }
    });
});

router.get('/collect_movie', function(req, res, next) {
    var u_id=req.query.u_id;
    var m_id=req.query.m_id;
    // console.log(email);
    request.get('http://127.0.0.1/backstage/movie/collect_movie?u_id='+u_id+"&m_id="+m_id, function (error, response, body) {
        if (!error && response.statusCode == 200) {
            console.log(body);
            res.json(body);
        }
    });
});

router.get('/nocollect_movie', function(req, res, next) {
    var u_id=req.query.u_id;
    var m_id=req.query.m_id;
    // console.log(email);
    request.get('http://127.0.0.1/backstage/movie/nocollect_movie?u_id='+u_id+"&m_id="+m_id, function (error, response, body) {
        if (!error && response.statusCode == 200) {
            console.log(body);
            res.json(body);
        }
    });
});

router.get('/is_collect_movie', function(req, res, next) {
    var u_id=req.query.u_id;
    var m_id=req.query.m_id;
    request.get('http://127.0.0.1/backstage/movie/is_collect_movie?u_id='+u_id+"&m_id="+m_id, function (error, response, body) {
        if (!error && response.statusCode == 200) {
            console.log(body);
            res.json(body);
        }
    });
});

router.get('/collect_movie_all', function(req, res, next) {
    var u_id=req.query.u_id;
    request.get('http://127.0.0.1/backstage/movie/collect_movie_all?u_id='+u_id, function (error, response, body) {
        if (!error && response.statusCode == 200) {
            console.log(body);
            res.json(body);
        }
    });
});




router.get('/find_book', function(req, res, next) {
    var b_id=req.query.b_id;
    var b_name=req.query.b_name;
    var b_summary=req.query.b_summary;
    var b_average=req.query.b_average;
    var b_img=req.query.b_img;
    request.post({url:'http://127.0.0.1/backstage/book/find_book', form: {b_id:b_id,b_name:b_name,b_summary:b_summary,b_average:b_average,b_img:b_img}}, function (error, response, body) {
        if (!error && response.statusCode == 200) {
            console.log(body);
            res.json(body);
        }
    });
});

router.get('/collect_book', function(req, res, next) {
    var u_id=req.query.u_id;
    var b_id=req.query.b_id;
    // console.log(email);
    request.get('http://127.0.0.1/backstage/book/collect_book?u_id='+u_id+"&b_id="+b_id, function (error, response, body) {
        if (!error && response.statusCode == 200) {
            console.log(body);
            res.json(body);
        }
    });
});

router.get('/nocollect_book', function(req, res, next) {
    var u_id=req.query.u_id;
    var b_id=req.query.b_id;
    // console.log(email);
    request.get('http://127.0.0.1/backstage/book/nocollect_book?u_id='+u_id+"&b_id="+b_id, function (error, response, body) {
        if (!error && response.statusCode == 200) {
            console.log(body);
            res.json(body);
        }
    });
});

router.get('/is_collect_book', function(req, res, next) {
    var u_id=req.query.u_id;
    var b_id=req.query.b_id;
    request.get('http://127.0.0.1/backstage/book/is_collect_book?u_id='+u_id+"&b_id="+b_id, function (error, response, body) {
        if (!error && response.statusCode == 200) {
            console.log(body);
            res.json(body);
        }
    });
});

router.get('/collect_book_all', function(req, res, next) {
    var u_id=req.query.u_id;
    request.get('http://127.0.0.1/backstage/book/collect_book_all?u_id='+u_id, function (error, response, body) {
        if (!error && response.statusCode == 200) {
            console.log(body);
            res.json(body);
        }
    });
});

router.get('/photo_all', function(req, res, next) {
    request.get('http://127.0.0.1/backstage/photo/photo_all', function (error, response, body) {
        if (!error && response.statusCode == 200) {
            // console.log(body);
            res.json(body);
        }
    });
});

router.get('/find_photo', function(req, res, next) {
    var p_id=req.query.p_id;
    request.get('http://127.0.0.1/backstage/photo/find_photo?p_id='+p_id, function (error, response, body) {
        if (!error && response.statusCode == 200) {
            console.log(body);
            res.json(body);
        }
    });
});

router.get('/collect_photo', function(req, res, next) {
    var u_id=req.query.u_id;
    var p_id=req.query.p_id;
    // console.log(email);
    request.get('http://127.0.0.1/backstage/photo/collect_photo?u_id='+u_id+"&p_id="+p_id, function (error, response, body) {
        if (!error && response.statusCode == 200) {
            console.log(body);
            res.json(body);
        }
    });
});

router.get('/nocollect_photo', function(req, res, next) {
    var u_id=req.query.u_id;
    var p_id=req.query.p_id;
    // console.log(email);
    request.get('http://127.0.0.1/backstage/photo/nocollect_photo?u_id='+u_id+"&p_id="+p_id, function (error, response, body) {
        if (!error && response.statusCode == 200) {
            console.log(body);
            res.json(body);
        }
    });
});

router.get('/is_collect_photo', function(req, res, next) {
    var u_id=req.query.u_id;
    var p_id=req.query.p_id;
    request.get('http://127.0.0.1/backstage/photo/is_collect_photo?u_id='+u_id+"&p_id="+p_id, function (error, response, body) {
        if (!error && response.statusCode == 200) {
            console.log(body);
            res.json(body);
        }
    });
});

router.get('/next_photo', function(req, res, next) {
    var p_id=req.query.p_id;
    request.get('http://127.0.0.1/backstage/photo/next_photo?p_id='+p_id, function (error, response, body) {
        if (!error && response.statusCode == 200) {
            // console.log(body);
            res.json(body);
        }
    });
});

// router.get('/next_collect_photo', function(req, res, next) {
//     var p_id=req.query.p_id;
//     request.get('http://127.0.0.1/backstage/photo/next_collect_photo?p_id='+p_id, function (error, response, body) {
//         if (!error && response.statusCode == 200) {
//             // console.log(body);
//             res.json(body);
//         }
//     });
// });

router.get('/prev_photo', function(req, res, next) {
    var p_id=req.query.p_id;
    request.get('http://127.0.0.1/backstage/photo/prev_photo?p_id='+p_id, function (error, response, body) {
        if (!error && response.statusCode == 200) {
            // console.log(body);
            res.json(body);
        }
    });
});

// router.get('/prev_collect_photo', function(req, res, next) {
//     var p_id=req.query.p_id;
//     request.get('http://127.0.0.1/backstage/photo/prev_collect_photo?p_id='+p_id, function (error, response, body) {
//         if (!error && response.statusCode == 200) {
//             // console.log(body);
//             res.json(body);
//         }
//     });
// });

router.get('/collect_photo_all', function(req, res, next) {
    var u_id=req.query.u_id;
    request.get('http://127.0.0.1/backstage/photo/collect_photo_all?u_id='+u_id, function (error, response, body) {
        if (!error && response.statusCode == 200) {
            console.log(body);
            res.json(body);
        }
    });
});
module.exports = router;
