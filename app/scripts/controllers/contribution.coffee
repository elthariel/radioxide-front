'use strict'

angular.module('radioxideApp')
  .controller 'ContributionCtrl', ($scope, Restangular, $routeParams) ->
    id = $routeParams.id
    Restangular.one('stations', id).get().then (station) ->
      station.genres = station.genre_list.join(', ')
      delete station.genre_list
      $scope.station = station

    $scope.submit = () ->
      # Cloning our station so we can prepare it for submission
      api_station = $scope.station.clone()

      # Wraps objects to objects_attributes
      for own key, value of api_station
        if value and typeof value  == 'object'
          delete api_station[key]
          api_station["#{key}_attributes"] = value

      # Transforming back 'genres' to an array
      api_station.genre_list = api_station.genres.split(',')
      delete api_station.genres

      api_station.post 'suggest', { station: api_station }


