const e = require('express');
var db = require('../config/db');

function getCurrentTime() {
    var date = new Date();
    var dd = date.getDate();
    var mm = date.getMonth()+1;
    var yyyy = date.getFullYear();
    var minute = date.getMinutes();
    if(minute < 10) {
        minute = `0${minute}`;
    }
    var currentTime = date.getHours() + ':' + minute;   
    return `${currentTime} ${dd}/${mm}/${yyyy}`;
}

module.exports = {
    
    //[GET] /
    renderHome(req, res, next) {
        res.render('home');
    },

    //[GET] /add-question
    renderAddQuestion(req, res, next) {
        var sql = `select count(questionId) as count from questions`;
        db.query(sql, function(err, result) {
            if(err) throw err;
            else {
                result = JSON.parse(JSON.stringify(result));
                res.render('addquestion', {
                    count: result[0].count
                });
            }
        })
    },

    //[POST] /add-question
    addNewQuestion(req, res, next) {
        var sql = `insert into questions(content, createdAt) values('${req.body.question}', '${getCurrentTime()}')`;
        db.query(sql, function(err, result) {
            if(err) throw err;
            else {
                console.log('1 row inserted');
                var sql = `SELECT questionId FROM questions ORDER BY questionId DESC LIMIT 0, 1`;
                db.query(sql, function(err, result) {
                    if(err) throw err;
                    else {
                        var id = JSON.parse(JSON.stringify(result));
                        var sql = `
                            insert into answers(questionId, answerContent, isCorrect) values
                            ('${id[0].questionId}', '${req.body.correct}', '1'),
                            ('${id[0].questionId}', '${req.body.wrong1}', '0'),
                            ('${id[0].questionId}', '${req.body.wrong2}', '0'),
                            ('${id[0].questionId}', '${req.body.wrong3}', '0')
                        `;
                        db.query(sql, function(err, result) {
                            if(err) throw err;
                            else {
                                console.log('4 answers inserted successfully');
                                res.redirect('back');
                            }
                        })
                    }
                })
            }
        })
    },

    //[GET] /play
    renderPlay(req, res, next) {
        
        var sql = `SELECT * FROM questions ORDER BY RAND() LIMIT 1;`;
        db.query(sql, function(err, result) {
            if(err) throw err;
            else {
                result = JSON.parse(JSON.stringify(result));
                var question = result;
                var questionId = result[0].questionId;
                var sql = `SELECT * FROM answers where questionId = ${questionId} ORDER BY RAND() LIMIT 4;`;
                db.query(sql, function(err, result) {
                    if(err)  throw err;
                    else {
                        //console.log(question[0].content);
                        result = JSON.parse(JSON.stringify(result));
                        //console.log(result);
                        res.render('question', {
                            question: question[0].content,
                            answers: result
                        })
                    }
                })

            }
        })
    },

    //[GET]
    renderWinner(req, res, next) {
        var username = req.query.username;
        var money = req.query.money;
        var score = req.params.score;
        var sql = `insert into matchs(username, score, money, playedAt) values('${username}', '${score}', '${money}', '${getCurrentTime()}')`;
        db.query(sql, function(err, result) {
            if(err) throw err;
            else {
                console.log('inserted 1 row to matchs successfully');
                res.render('winner');
            }
        })
    },

    //[GET]
    renderRank(req, res, next) {
        var sql = `
        select *
        from matchs
        ORDER BY score DESC LIMIT 5
        `;
        db.query(sql, function(err, result) {
            if(err) throw err;
            else {
                result = JSON.parse(JSON.stringify(result));
                res.render('rank', {
                    result: result
                })
            }
        })
    }

}