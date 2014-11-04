# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

app = angular.module("vauto", ["ngAnimate"])

app.controller "ItemsCtrl", ["$scope", "$http", @ItemsCtrl = ($scope, $http) ->
  $scope.loading = true
  $http.get("/items").success (data) ->
    $scope.items = data
    $scope.loading = false
]

app.controller "VehiclesCtrl", ["$scope", "$http", @VehiclesCtrl = ($scope, $http) ->
  $scope.loading = true
  $http.get("/used.json").success (data) ->
    $scope.items = data
    $scope.loading = false
    $scope.mpgcity = 0
    $scope.mpghighway = 0
		$scope.priceFilter = (item) ->
			if $scope.min_price or $scope.max_price
		  	item.price > $scope.min_price and item.price < $scope.max_price
		  else
		  	true
		$scope.odometerFilter = (item) ->
			if $scope.min_odometer or $scope.max_odometer
		  	item.mileage > $scope.min_odometer and item.mileage < $scope.max_odometer
		  else
		  	true
		$scope.mpgFilter = (item) ->
		  item.mpghighway >= $scope.mpghighway and item.mpgcity >= $scope.mpgcity

		$scope.modelFilter = (item) ->
		  if $scope.the_model?
		  	item.model is $scope.the_model 
		  else
		  	true

		$scope.makeFilter = (item) ->
		  if $scope.the_make?
		  	item.make is $scope.the_make 
		  else
		  	true

]	