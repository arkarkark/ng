ExploreRoute = ($stateProvider) ->
  console.log('setting up ExploreRoute')
  $stateProvider.state("explore", {
    url: '/explore?boo',
    templateUrl: '/components/explore/explore.html'
    controller: 'ExploreCtrl as exploreCtrl'
    reloadOnSearch: false
      }
  )


class ExploreCtrl
  constructor: (@$location, @$state, @$stateParams) ->
    @explore = 'here'
    @count = 0

  addParamLocation: () ->
    x = Number(@$location.search().boo) + 1
    console.log('adding param: Location: ' + x)
    @$location.search('boo',  x)

  addParamStateParams: () ->
    x = Number(@$location.search().boo) + 1
    console.log('adding param: StateParams')
    @$stateParams.boo = x

  addParamGo: () ->
    x = Number(@$location.search().boo) + 1
    console.log('adding paramL go')
    @$state.go('explore', {boo: x})

  getCount: () ->
    @count #  += 1



angular.module('ExploreModule', [])

angular.module('ExploreModule').config(ExploreRoute)

angular.module('ExploreModule').controller('ExploreCtrl',
["$location", "$state", "$stateParams", ExploreCtrl])
