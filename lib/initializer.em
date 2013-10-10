Em.onLoad 'Ember.Application', (application) ->
  application.initializer
    name: 'ember-auth.strategy.token'
    before: 'ember-auth-load'

    initialize: (container, app) ->
      app.register 'authStrategy:token', Em.Auth.TokenAuthStrategy, \
      { singleton: true }
      app.inject 'authStrategy:token', 'auth', 'auth:main'
