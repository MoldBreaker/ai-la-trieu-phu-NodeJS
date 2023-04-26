const express = require('express');
const bp = require('body-parser');
const engine = require('express-handlebars');
const db = require('./config/db');
const router = require('./routers/router');
const app = express();
const port = 3000;

app.engine('handlebars', engine.engine({ extname: '.hbs', defaultLayout: "main"}));
app.set('view engine', 'handlebars');
app.set('views', './views');

app.use(bp.json())
app.use(bp.urlencoded({ extended: true }))

//conect database
db.connect(function(err){
    if(err) throw err;
    else {
        console.log('connected to database successfully');
    }
})

//routers
router(app);

app.listen(port, () => {
  console.log(`Example app listening on port http://localhost:${port}`);
})