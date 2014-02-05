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
  $routeProvider.when '/',
    templateUrl: 'views/main.html',
    controller:  'MainCtrl'
  .when '/search/:query?/:page?',
    templateUrl: 'views/search.html',
    controller:  'SearchCtrl'
  .when '/local/:page?',
    templateUrl: 'views/local.html',
    controller:  'LocalCtrl'
  .when '/genres',
    templateUrl: 'views/genres.html',
    controller:  'AllGenresCtrl'
  .when '/genres/:genre/:page?',
    templateUrl: 'views/genre.html',
    controller:  'GenreCtrl'
  .when '/genres/:genre/:page?',
    templateUrl: 'views/genre.html',
    controller:  'GenreCtrl'
  .when '/contribute/:id',
    templateUrl: 'views/contrib.html',
    controller: 'ContributionCtrl'
  .when '/signin',
    templateUrl: 'views/signin.html',
    controller:  'SessionCtrl'
  .when '/signup',
    templateUrl: 'views/signup.html',
    controller:  'RegistrationCtrl'
  .otherwise
    redirectTo: '/'

