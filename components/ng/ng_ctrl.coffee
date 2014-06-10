class NgCtrl
  constructor: ($scope, @MyLocation) ->
    @ng = 'form ng'
    @paths = []

    $scope.$on('$locationChangeStart', @locationChangeStart)

  locationChangeStart: (event, newUrl, oldUrl) =>
    return if (newUrl == oldUrl)
    @MyLocation.paths = newUrl.split('/').splice(3)
    if @MyLocation.ngPaths.indexOf(@MyLocation.paths[0]) == -1
      # url is not angularized so we just open it
      event.preventDefault()
      window.open(newUrl, '_self')


angular.module('NgCtrlModule', [])
.controller('NgCtrl', ['$scope', 'MyLocation', NgCtrl])
