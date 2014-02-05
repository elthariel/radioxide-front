'use strict'

describe 'Controller: RegistrationCtrl', () ->

  # load the controller's module
  beforeEach module 'radioxideApp'

  RegistrationCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    RegistrationCtrl = $controller 'RegistrationCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3
