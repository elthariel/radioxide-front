'use strict'

angular.module('radioxideApp')
  .controller 'SessionCtrl', ($scope, $rootScope, Authentication, Restangular, $location) ->
    $scope.logout = () ->
      console.log "Signin Out !"
      Restangular.all('user').one('sessions', 'current').remove().then () ->
        $rootScope.currentUser = null

    $scope.login = () ->
      Restangular.all('user').all('sessions')
        .post({ user_session: $scope.session }).then (session, headers) ->
          Authentication.refreshCurrentUser()
          $location.path('/')
