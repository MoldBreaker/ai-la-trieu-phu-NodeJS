var controller = require('../controllers/controller');

module.exports = function router(app) {
    
    app.get('/add-question', controller.renderAddQuestion);
    app.post('/add-question', controller.addNewQuestion);
    app.get('/play/:score', controller.renderPlay);
    app.get('/winner/:score', controller.renderWinner);
    app.get('/rank', controller.renderRank);
    app.get('/', controller.renderHome);

}