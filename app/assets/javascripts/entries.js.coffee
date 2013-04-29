@EntriesCtrl = [ "$scope", "Entries", ($scope, Entries) ->
	$scope.entries = Entries.query()
]

@EntryCtrl = ["$scope", "$http", ($scope, $http) ->
	$http.get().success (data) ->
		  $scope.entry = data
]
