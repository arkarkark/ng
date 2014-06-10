ng = angular.module('Ng', ['ui.router', 'MyLocationModule', 'NgCtrlModule'])

BaseRoute = ($locationProvider, $stateProvider, $urlRouterProvider) ->
  $locationProvider.html5Mode(true)
  $urlRouterProvider.otherwise('/')

  $stateProvider.state("home", {
    url: '/',
    template: '<p>hello I am home</p>'}
  )
  $stateProvider.state("wibble", {
    url: '/wibble',
    template: '<p>Wibble wibble</p>'}
  )


ng.config(BaseRoute).run((MyLocation) ->
  MyLocation.ngPaths.push('wibble')
  MyLocation.ngPaths.push('')
  )
