app = angular.module("Halo", ["ngResource"])

app.config ["$httpProvider", ($httpProvider) ->
  $httpProvider.defaults.headers.common["X-Requested-With"] = "XMLHttpRequest"
]

app.factory "Projects", ["$resource", ($resource) ->
  $resource("/projects", {}, {update: {method: "PUT"}}, {})
]

app.factory "Organization", ["$resource", ($resource) ->
  $resource("/organizations", {}, {update: {method: "PUT"}}, {})
]
