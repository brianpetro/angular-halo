app = angular.module("Halo", ["ngResource"])

app.config ["$httpProvider", ($httpProvider) ->
  $httpProvider.defaults.headers.common["X-Requested-With"] = "XMLHttpRequest"
]

app.factory "Project", ["$resource", ($resource) ->
  $resource("/projects", {}, {update: {method: "PUT"}}, {})
]
