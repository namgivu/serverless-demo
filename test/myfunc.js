/* global describe, before, it */

// tests for myfunc
// Generated by serverless-mocha-plugin

const mochaPlugin = require('serverless-mocha-plugin');

const expect = mochaPlugin.chai.expect;
const wrapped = mochaPlugin.getWrapper('myfunc', '/myfunc/index.js', 'handler');

describe('myfunc', () => {
  before((done) => {
    done();
  });

  it('implement tests here', () => wrapped.run({caller: 'test'}).then((response) => {
    expect(response).to.not.be.empty();
  }));
});
