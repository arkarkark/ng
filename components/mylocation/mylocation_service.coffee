class MyLocation
  constructor: () ->
    @paths = []
    @title = ''
    @ngPaths = []

angular.module('MyLocationModule', []).service('MyLocation', MyLocation)
