'use strict'

describe 'Controller: AllgenresctrlCtrl', () ->

  # load the controller's module
  beforeEach module 'radioxideApp'

  AllgenresctrlCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    AllgenresctrlCtrl = $controller 'AllgenresctrlCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3
