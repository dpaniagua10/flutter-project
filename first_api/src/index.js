const express = require('express');
const app = express();

// middlewares
app.use(express.json());
app.use(express.urlencoded({extended: false}));

// routes
app.use(require('./routes/index'));

app.listen(process.env.PORT || 3000, function(){
    console.log("Express server listening on port %d in %s mode", this.address().port, app.settings.env);
});
