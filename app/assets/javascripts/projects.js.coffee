@ProjectCtrl = ["$scope", "Project", ($scope, Project) ->
  $scope.to_dones = Done.query()

  $scope.addProject = ->
  	project = Project.save $scope.newProject, ->
			$scope.projects = Project.query()
		$scope.newProject = {}
]
