# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

app = angular.module("vauto", [])

app.controller "ItemsCtrl", ["$scope", "$http", @ItemsCtrl = ($scope, $http) ->
  $scope.loading = true
  $http.get("/items").success (data) ->
    $scope.items = data
    $scope.loading = false
]

app.controller "VehiclesCtrl", ["$scope", "$http", @VehiclesCtrl = ($scope, $http) ->
  $scope.loading = true
  $http.get("/vehicles").success (data) ->
    $scope.items = data
    $scope.loading = false
]