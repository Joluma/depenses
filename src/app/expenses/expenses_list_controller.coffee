angular
  .module 'depenses.expenses'
  .controller 'ExpensesListCtrl', [
    '$scope', '$rootScope', '$window', 
    ($scope,   $rootScope,   $window) ->
      'use strict'
      $rootScope.activeMenu = "list"
      $scope.expenses = JSON.parse($window.localStorage.getItem('expenses') or '[]')
]
