"use strict"

app.controller "kitchenCtrl", ($scope,$http,$window,issues,labels) ->

  $scope.issues = issues.query
    username: 'karaagex'
    repo: 'website-issues'

  $scope.labels = labels.query
    username: 'karaagex'
    repo: 'website-issues'

  $scope.createIssues = () ->
    $http.post 'https://api.github.com/repos/karaagex/website-issues/issues?access_token=0c101e56880ae72dfba8db0e491a1ef2f29cc8da',
     labels: [$scope.issueLabel]
     title: $scope.issueTitle
    .success () ->
      $window.location.reload()
