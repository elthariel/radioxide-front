'use strict';

deps = [
  'ngCookies',
  'ngResource',
  'ngSanitize',
  'ngRoute',
  'restangular',
  'mgcrea.ngStrap',
]

module = angular.module('radioxideApp', deps)
module.config ($routeProvider, RestangularProvider) ->
  # Configuring Restangular
  RestangularProvider.setBaseUrl('http://localhost:3000/api/1')
  RestangularProvider.setRequestSuffix('.json')
  RestangularProvider.setDefaultHttpFields({withCredentials: true})

  RestangularProvider.addResponseInterceptor (data, op, what, url, resp, def) ->
    if op == 'getList' or op == 'get'
      if data.meta
        meta = data.meta
        delete data.meta
      res = data[Object.keys(data)[0]]
      res.meta = meta if meta
      res



  # Our application routes
  route = $routeProvider.when '/',
    templateUrl: 'views/main.html',
    controller:  'MainCtrl'
  route = route.when '/local',
    templateUrl: 'views/radios.html',
    controller:  'LocalCtrl'
  route = route.when '/genres',
    templateUrl: 'views/genres.html',
    controller:  'AllGenresCtrl'
  route = route.when '/genres/:genre',
    templateUrl: 'views/genre.html',
    controller:  'GenreCtrl'
  route = route.when '/contribute/:id',
    templateUrl: 'views/contrib.html',
    controller: 'ContributionCtrl'
  route = route.when '/signin',
    templateUrl: 'views/signin.html',
    controller:  'SessionCtrl'
  route = route.when '/signup',
    templateUrl: 'views/signup.html',
    controller:  'RegistrationCtrl'
  route.otherwise
    redirectTo: '/'

