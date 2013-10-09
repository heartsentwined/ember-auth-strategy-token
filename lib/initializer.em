Em.onLoad 'Ember.Application', (application) ->
  application.initializer
    name: 'ember-auth-strategy-token'
    after: 'ember-auth'

    initialize: (container, app) ->
      app.register 'authStrategy:token', Em.Auth.TokenAuthStrategy
