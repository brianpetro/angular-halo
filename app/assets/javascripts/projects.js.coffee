# Projects(plural) Controller is used for the index page.
@ProjectsCtrl = ["$scope", "Projects", ($scope, Projects) ->
  $scope.projects = Projects.query()

  $scope.addProject = ->
  	project = Projects.save $scope.newProject, ->
			$scope.projects = Projects.query()
		$scope.newProject = {}
]

# Project(singular) Controller is used for the show page. Isolates the 'user project page' from the projects index which accesses all of the projects for admin functions.
@ProjectCtrl = ["$scope", "$http", ($scope, $http) ->
	$http.get().success (data) ->
		  $scope.project = data
]
