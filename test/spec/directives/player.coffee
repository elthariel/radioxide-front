'use strict'

describe 'Directive: player', () ->

  # load the directive's module
  beforeEach module 'radioxideApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<player></player>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the player directive'
