@ProjectCtrl = ["$scope", "Project", ($scope, Project) ->
  $scope.projects = Project.query()

  $scope.addProject = ->
  	project = Project.save $scope.newProject, ->
			$scope.projects = Project.query()
		$scope.newProject = {}
]
