'use strict';

angular.module('radioxideApp')
  .controller 'LocalCtrl', ($scope, Restangular, Player) ->
    baseLocal = Restangular.all('stations').all('local')
    $scope.radios = baseLocal.getList().$object

    $scope.selectRadio = (id) ->
      $scope.currentRadioId = id #Restangular.one('stations', id).get().$object



