var express = require('express');
var router = express.Router();

var mysql = require('mysql');
// http://nodejs.org/docs/v0.6.5/api/fs.html#fs.writeFile
var fs = require('fs');

var connection = mysql.createConnection({
   host: 'localhost',
   user: 'root',
   password: 'root',
   database: 'deepread'
});

function generateUUID() {
  var d = new Date().getTime();
  var uuid = 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
    var r = (d + Math.random()*16)%16 | 0;
    d = Math.floor(d/16);
    return (c=='x' ? r : (r&0x3|0x8)).toString(16);
  });
  return uuid;
};
function getDateTime() {

  var date = new Date();

  var hour = date.getHours();
  hour = (hour < 10 ? "0" : "") + hour;

  var min  = date.getMinutes();
  min = (min < 10 ? "0" : "") + min;

  var sec  = date.getSeconds();
  sec = (sec < 10 ? "0" : "") + sec;

  var year = date.getFullYear();

  var month = date.getMonth() + 1;
  month = (month < 10 ? "0" : "") + month;

  var day  = date.getDate();
  day = (day < 10 ? "0" : "") + day;

  return year + ":" + month + ":" + day + ":" + hour + ":" + min + ":" + sec;

}

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { 
    title: 'Express',
    categories: JSON.parse(fs.readFileSync('file/categoriesName.json', 'utf8'))
  });
});

/*header里边的操作，把表中的数据放到文件里边。类别名字。*/
connection.connect();



router.get('/header.html', function(req, res, next) {
  connection.query('select * from category', function(err, results, fields){
    if(err){ console.log('查询出了问题 - ', err.message); return }
    fs.writeFile('file/categoriesInfo.json', JSON.stringify(results), function(err){
      if(err) throw err;
      console.log('查询成功')
    })
  })
  res.render('header', {
    categories: JSON.parse(fs.readFileSync('file/categoriesInfo.json', 'utf8')), 
    loginUser: {
      name: req.cookies.loginName,
      power: req.cookies.isManager
    } });
});
router.post('/managerSearchBook', function(req, res){
  if(req.cookies.isManager == 1){
    connection.query('select caid,name,discription from category', function(err, results, fields){
      if(err){ console.log('查询出了问题 - ', err.message); return }
      fs.writeFile('file/categoriesInfo.json', JSON.stringify(results), function(err){
        if(err) throw err;
      })
    })
    connection.query(`SELECT book.isbn,book.name as bookname,book.intro,book.author,book.publisher,book.price,book.reallyPrice,book.stock,book.image,book.printed,category.name as categoryname,category.caid
      FROM book INNER JOIN category ON book.caid = category.caid
      WHERE book.name=? and book.caid = category.caid`,[req.body.bookName], function(err, results, fields){
      if(err){ console.log('查询出了问题 - ', err.message); return }
      fs.writeFile('file/bookInfo.json', JSON.stringify(results), function(err){
        if(err) throw err;
      })
    })
    res.render('bookManager', { 
      search: true,
      categories: JSON.parse(fs.readFileSync('file/categoriesInfo.json', 'utf8')),
      book: JSON.parse(fs.readFileSync('file/bookInfo.json', 'utf8'))
    });
  }else{
    res.send('你不是管理员')
  }
})
router.post('/managerCategorySearchBook', function(req, res){
  if(req.cookies.isManager == 1){
    connection.query('select caid,name,discription from category', function(err, results, fields){
      if(err){ console.log('查询出了问题 - ', err.message); return }
      fs.writeFile('file/categoriesInfo.json', JSON.stringify(results), function(err){
        if(err) throw err;
      })
    })
    connection.query(`SELECT book.isbn,book.name as bookname,book.intro,book.author,book.publisher,book.price,book.reallyPrice,book.stock,book.image,book.printed,category.name as categoryname,category.caid
      FROM book INNER JOIN category ON book.caid = category.caid
      WHERE book.caid=? and book.caid = category.caid`,[req.body.caid], function(err, results, fields){
      if(err){ console.log('查询出了问题 - ', err.message); return }
      fs.writeFile('file/bookInfo.json', JSON.stringify(results), function(err){
        if(err) throw err;
      })
    })
    res.render('bookManager', { 
      search: true,
      categories: JSON.parse(fs.readFileSync('file/categoriesInfo.json', 'utf8')),
      book: JSON.parse(fs.readFileSync('file/bookInfo.json', 'utf8'))
    });
  }else{
    res.send('你不是管理员')
  }
})
router.post('/searchBook', function(req, res, next){
  connection.query('select caid,name,discription from category', function(err, results, fields){
    if(err){ console.log('查询出了问题 - ', err.message); return }
    fs.writeFile('file/categoriesInfo.json', JSON.stringify(results), function(err){
      if(err) throw err;
    })
  })
  connection.query(`SELECT book.isbn,book.name as bookname,book.intro,book.author,book.publisher,book.price,book.reallyPrice,book.stock,book.image,book.printed,category.name as categoryname,category.caid
    FROM book INNER JOIN category ON book.caid = category.caid
    WHERE book.name=? and book.caid = category.caid`,[req.body.bookName], function(err, results, fields){
    if(err){ console.log('查询出了问题 - ', err.message); return }
    fs.writeFile('file/bookInfo.json', JSON.stringify(results), function(err){
      if(err) throw err;
    })
  })
  res.render('categories', { 
    search: true,
    categories: JSON.parse(fs.readFileSync('file/categoriesInfo.json', 'utf8')),
    book: JSON.parse(fs.readFileSync('file/bookInfo.json', 'utf8'))
  });
})
router.post('/categorySearchBook', function(req, res){
  connection.query('select caid,name,discription from category', function(err, results, fields){
    if(err){ console.log('查询出了问题 - ', err.message); return }
    fs.writeFile('file/categoriesInfo.json', JSON.stringify(results), function(err){
      if(err) throw err;
    })
  })
  connection.query(`SELECT book.isbn,book.name as bookname,book.intro,book.author,book.publisher,book.price,book.reallyPrice,book.stock,book.image,book.printed,category.name as categoryname,category.caid
    FROM book INNER JOIN category ON book.caid = category.caid
    WHERE book.caid=? and book.caid = category.caid`,[req.body.caid], function(err, results, fields){
    if(err){ console.log('查询出了问题 - ', err.message); return }
    fs.writeFile('file/bookInfo.json', JSON.stringify(results), function(err){
      if(err) throw err;
    })
  })
  res.render('categories', { 
    search: true,
    categories: JSON.parse(fs.readFileSync('file/categoriesInfo.json', 'utf8')),
    book: JSON.parse(fs.readFileSync('file/bookInfo.json', 'utf8'))
  });
})
router.post('/readerCollect', function(req, res){
  connection.query('select rid,isbn,time from readercollect', (err, results)=>{
    if(err) throw err;
    fs.writeFile('file/readerCollect.json', JSON.stringify(results), function(error){
      if(error) throw error;
      console.log('名字存在了file/readerCollect.json文件里边')
    })
  })
  let readerCollect = JSON.parse(fs.readFileSync('file/readerCollect.json', 'utf8'))
  let canrun = 1
  readerCollect.forEach((collect)=>{
    if(collect.isbn === req.body.isbn && collect.rid === req.cookies.loginId){
      res.send('您已经收藏过该商品了')
      canrun = 0
    }
  })
  if(canrun){
    let addSqlParams = [req.cookies.loginId, req.body.isbn, getDateTime()];
    connection.query('INSERT INTO readercollect(rid,isbn,time) VALUES(?,?,?)',addSqlParams,function (err, result) {
      if(err){
        console.log('[INSERT ERROR] - ',err.message);
        return;
      }   
    });
    res.send('收藏成功！') 
  }
})



router.get('/footer.html', function(req, res, next) {
  res.render('footer', { });
});

router.get('/categories.html', function(req, res, next) {
  res.render('categories', { });
});

router.get('/cart.html', function(req, res, next) {
  res.render('cart', { });
});

router.get('/bookDetail.html', function(req, res, next) {
  res.render('bookDetail', { });
});

router.get('/favorite.html', function(req, res, next) {
  res.render('favorite', { });
});


/*登录注册那一块儿*/ 
router.get('/loginAndRegister.html', function(req, res, next) {
  res.render('loginAndRegister', {isManager: false });
});
router.post('/saveUser', function(req, res, next){
  connection.query('select userName,password from reader', (err, results)=>{
    if(err) throw err;
    fs.writeFile('file/userName_password.json', JSON.stringify(results), function(error){
      if(error) throw error;
      console.log('名字存在了file/userName_password.json文件里边')
    })
  })
  let existedUserName = JSON.parse(fs.readFileSync('file/userName_password.json', 'utf8'))
  let add = 1;
  existedUserName.forEach((user)=>{
    console.log(user.userName)
    if(user.userName === req.body.name){
      res.send('用户名已存在')
      add = 0
    }
  })
  if(add){
    let  addSqlParams = [generateUUID(), req.body.name, req.body.phone, req.body.password, '1'];
    connection.query('INSERT INTO reader(rid,username,phone,password,membership) VALUES(?,?,?,?,?)',addSqlParams,function (err, result) {
      if(err){
        console.log('[INSERT ERROR] - ',err.message);
        return;
      }   
    });
    res.send('注册成功！') 
  }
})
router.post('/login', function(req, res, next){
  connection.query('select userName, password, rid from reader', (err, results)=>{
    if(err) throw err;
    fs.writeFile('file/userName_password.json', JSON.stringify(results), function(error){
      if(error) throw error;
    })
  })
  let existedUserName = JSON.parse(fs.readFileSync('file/userName_password.json', 'utf8'))
  existedUserName.forEach((user)=>{
    if(user.userName === req.body.name){
      //说明该用户是注册用户
      if(user.password === req.body.password){
        //设置cookie，因为此时说明是本人登录
        res.cookie('loginName', user.userName);
        res.cookie('loginId', user.rid) 
        res.cookie('isManager', 0)
        res.render('index')
      }else{
        res.send('密码错误！')
      }
    }
  })
  res.send('未注册')
})
router.get('/changeUser', function(req, res, next){
  res.render('loginAndRegister', {isManager: false})
})
router.get('/managerLogin', function(req, res){
  res.render('loginAndRegister', {isManager: true})
})
router.post('/managerLogin', function(req, res){
  connection.query('select name, password, wid from worker', (err, results)=>{
    if(err) throw err;
    fs.writeFile('file/workerName_password.json', JSON.stringify(results), function(error){
      if(error) throw error;
    })
  })
  let existedWorkerName = JSON.parse(fs.readFileSync('file/workerName_password.json', 'utf8'))
  existedWorkerName.forEach((user)=>{
    if(user.name === req.body.name){
      //说明该用户是注册用户
      if(user.password === req.body.password){
        //设置cookie，因为此时说明是本人登录
        res.cookie('loginName', user.name);
        res.cookie('loginId', user.wid) 
        res.cookie('isManager', 1)
        res.render('index')
      }else{
        res.send('密码错误！')
      }
    }
  })
  res.send('不存在该管理员')
})

router.get('/categoryManager.html', function(req, res){
  if(req.cookies.isManager == 1){
    connection.query('select caid,name,discription from category', function(err, results, fields){
      if(err){ console.log('查询出了问题 - ', err.message); return }
      fs.writeFile('file/categoriesInfo.json', JSON.stringify(results), function(err){
        if(err) throw err;
      })
    })
    connection.query(`SELECT book.isbn,book.name as bookname,book.intro,book.author,book.publisher,book.price,book.reallyPrice,book.stock,book.image,book.printed,category.name as categoryname,category.caid
      FROM book INNER JOIN category ON book.caid = category.caid
      WHERE book.caid = category.caid`, function(err, results, fields){
      if(err){ console.log('查询出了问题 - ', err.message); return }
      fs.writeFile('file/bookInfo.json', JSON.stringify(results), function(err){
        if(err) throw err;
      })
    })
    res.render('categoryManager', { 
      categories: JSON.parse(fs.readFileSync('file/categoriesInfo.json', 'utf8')),
      book: JSON.parse(fs.readFileSync('file/bookInfo.json', 'utf8'))
    });
  }else{
    res.send('你不是管理员')
  }
})
router.post('/addCategory', function(req, res){
  connection.query('select * from category', (err, results)=>{
    if(err) throw err;
    fs.writeFile('file/categoriesInfo.json', JSON.stringify(results), function(error){
      if(error) throw error;
    })
  })
  let existedCategory = JSON.parse(fs.readFileSync('file/categoriesInfo.json', 'utf8'))
  let add = 1;
  existedCategory.forEach((category)=>{
    if(category.caid === req.body.id){
      res.send('该分类id已存在，不允许重复。')
      add = 0
    }
  })
  if(add){
    connection.query('INSERT INTO category(caid,name,discription) VALUES(?,?,?)',[req.body.id, req.body.name, req.body.discription], function(err, result){
      if(err) throw err;
    })
    res.send('添加分类成功！') 
  }
})
router.post('/changeCategory', function(req, res){
  connection.query('UPDATE category SET name=?,discription=? WHERE caid=?',[req.body.name, req.body.discription, req.body.id], function(err, result){
    if(err) throw err;
    res.send('修改成功')
  })
})
router.post('/deleteCategory', function(req, res){
  connection.query('delete from category where caid = ?', req.body.id, function(err, result){
    if(err) throw err;
    res.send('删除成功')
  })
})

router.get('/bookManager.html', function(req, res){
  if(req.cookies.isManager == 1){
    connection.query('select caid,name,discription from category', function(err, results, fields){
      if(err){ console.log('查询出了问题 - ', err.message); return }
      fs.writeFile('file/categoriesInfo.json', JSON.stringify(results), function(err){
        if(err) throw err;
      })
    })
    connection.query(`SELECT book.isbn,book.name as bookname,book.intro,book.author,book.publisher,book.price,book.reallyPrice,book.stock,book.image,book.printed,category.name as categoryname,category.caid
      FROM book INNER JOIN category ON book.caid = category.caid
      WHERE book.caid = category.caid`, function(err, results, fields){
      if(err){ console.log('查询出了问题 - ', err.message); return }
      fs.writeFile('file/bookInfo.json', JSON.stringify(results), function(err){
        if(err) throw err;
      })
    })
    res.render('bookManager', { 
      search: undefined,
      categories: JSON.parse(fs.readFileSync('file/categoriesInfo.json', 'utf8')),
      book: JSON.parse(fs.readFileSync('file/bookInfo.json', 'utf8'))
    });
  }else{
    res.send('你不是管理员')
  }
})
router.post('/addBook', function(req, res){
  connection.query(
    'insert into book(isbn, name, intro, author, publisher, price, reallyPrice, stock, image, printed, caid) values(?,?,?,?,?,?,?,?,?,?,?)',
    [req.body.isbn, req.body.name, req.body.intro, req.body.author, req.body.publisher, req.body.price, req.body.reallyPrice, req.body.stock, req.body.image, req.body.printed, req.body.caid],
    function(err, result){
      if(err) throw err;
      res.send('图书信息录入成功')
    })
})
router.post('/changeBook', function(req, res){
  connection.query('update book set name=?,intro=?,author=?,publisher=?,price=?,reallyPrice=?,stock=?,image=?,printed=?,caid=? where isbn=?',
    [req.body.name, req.body.intro, req.body.author, req.body.publisher, req.body.price, req.body.reallyPrice, req.body.stock, req.body.image, req.body.printed, req.body.caid, req.body.isbn],
    function(err, result){
    if(err) throw err;
    res.send('修改成功')
  })
})
router.post('/deleteBook', function(req, res){
  connection.query('delete from book where isbn = ?', req.body.isbn, function(err, result){
    if(err) throw err;
    res.send('删除成功')
  })
})


router.get('/manager.html', function(req, res, next) {
  if(req.cookies.isManager == 1){
    connection.query('select caid,name,discription from category', function(err, results, fields){
      if(err){ console.log('查询出了问题 - ', err.message); return }
      fs.writeFile('file/categoriesInfo.json', JSON.stringify(results), function(err){
        if(err) throw err;
      })
    })
    connection.query(`SELECT book.isbn,book.name as bookname,book.intro,book.author,book.publisher,book.price,book.reallyPrice,book.stock,book.image,book.printed,category.name as categoryname,category.caid
      FROM book INNER JOIN category ON book.caid = category.caid
      WHERE book.caid = category.caid`, function(err, results, fields){
      if(err){ console.log('查询出了问题 - ', err.message); return }
      fs.writeFile('file/bookInfo.json', JSON.stringify(results), function(err){
        if(err) throw err;
      })
    })
    res.render('manager', { 
      categories: JSON.parse(fs.readFileSync('file/categoriesInfo.json', 'utf8')),
      book: JSON.parse(fs.readFileSync('file/bookInfo.json', 'utf8'))
    });
  }else{
    res.send('你不是管理员')
  }
});


router.post('/addBook', function(req, res){
  connection.query(
    'insert into book(isbn, name, intro, author, publisher, price, reallyPrice, stock, image, printed, caid) values(?,?,?,?,?,?,?,?,?,?,?)',
    [req.body.isbn, req.body.name, req.body.intro, req.body.author, req.body.publisher, req.body.price, req.body.reallyPrice, req.body.stock, req.body.image, req.body.printed, req.body.caid],
    function(err, result){
      if(err) throw err;
      res.send('图书信息录入成功')
    })
})
router.post('/changeBook', function(req, res){
  connection.query('update book set name=?,intro=?,author=?,publisher=?,price=?,reallyPrice=?,stock=?,image=?,printed=?,caid=? where isbn=?',
    [req.body.name, req.body.intro, req.body.author, req.body.publisher, req.body.price, req.body.reallyPrice, req.body.stock, req.body.image, req.body.printed, req.body.caid, req.body.isbn],
    function(err, result){
    if(err) throw err;
    res.send('修改成功')
  })
})
router.post('/deleteBook', function(req, res){
  connection.query('delete from book where isbn = ?', req.body.isbn, function(err, result){
    if(err) throw err;
    res.send('删除成功')
  })
})

router.get('/personal.html', function(req, res, next) {
  if(req.cookies.loginId&&req.cookies.isManager!=1){
    res.render('personal', { })
  }else{
    res.send('你没有登录哦')
  }
});

module.exports = router;
