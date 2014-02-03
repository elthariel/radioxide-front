'use strict'

describe 'Service: CurrentUser', () ->

  # load the service's module
  beforeEach module 'radioxideApp'

  # instantiate service
  CurrentUser = {}
  beforeEach inject (_CurrentUser_) ->
    CurrentUser = _CurrentUser_

  it 'should do something', () ->
    expect(!!CurrentUser).toBe true
