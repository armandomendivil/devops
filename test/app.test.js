const request = require('supertest');
const app = require('../app');

describe('app', function () {
  it('Should serve html on index', function (done) {
    request(app)
      .get('/')
      .expect('Content-Type', /html/)
      .expect(200, done);
  });
});
