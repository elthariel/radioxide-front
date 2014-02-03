'use strict'

describe 'Controller: SessionCtrl', () ->

  # load the controller's module
  beforeEach module 'radioxideApp'

  SessionCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    SessionCtrl = $controller 'SessionCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3
