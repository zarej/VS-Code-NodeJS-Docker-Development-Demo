var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'VS Code demo development NodeJS and ExpressJS with docker' });
});

module.exports = router;
