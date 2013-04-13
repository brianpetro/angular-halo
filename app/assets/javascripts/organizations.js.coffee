@OrganizationCtrl = ["$scope", "Organization", ($scope, Organization) ->
  $scope.organizations = Organization.query()

  $scope.addOrganization = ->
  	organization = Organization.save $scope.newOrganization, ->
			$scope.organizations = Organization.query()
		$scope.newOrganization = {}
]
