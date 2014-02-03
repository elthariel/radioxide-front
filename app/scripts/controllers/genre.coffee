'use strict'

angular.module('radioxideApp')
  .controller 'GenreCtrl', ($scope, $routeParams, Restangular) ->
    ra = Restangular.all('stations').one('genre', $routeParams.genre)
    $scope.radios = ra.getList().$object
    $scope.genre = $routeParams.genre

    $scope.selectRadio = (id) ->
      $scope.currentRadioId = id

