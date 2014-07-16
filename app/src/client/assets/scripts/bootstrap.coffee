"use strict"

app = angular.module("karaagex",['ngResource'])

  .factory 'issues', ($resource) ->
    $resource 'https://api.github.com/repos/:username/:repo/issues',
      state: 'open',
      query:
        method: 'JSONP'
        params:
          callback: 'JSON_CALLBACK'

  .factory 'labels', ($resource) ->
    $resource 'https://api.github.com/repos/:username/:repo/labels',
      query:
        method: 'JSONP'
        params:
          callback: 'JSON_CALLBACK'

