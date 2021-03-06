var domready = require('domready');
var MainView = require('./main-view');
var Router = require('./router');


window.app = {
    init: function () {
        var self = this;
        domready(function () {
            self.router = new Router();
            self.view = new MainView({
                el: document.body
            });
            self.router.history.start({pushState: true});
        });
    }
};

window.app.init();
