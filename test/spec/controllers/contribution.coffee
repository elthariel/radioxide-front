'use strict'

describe 'Controller: ContributionCtrl', () ->

  # load the controller's module
  beforeEach module 'radioxideApp'

  ContributionCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    ContributionCtrl = $controller 'ContributionCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3
