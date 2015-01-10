angular
  .module 'depenses.expenses'
  .controller 'ExpensesAddCtrl', [
    '$scope', '$rootScope', '$window', 
    ($scope,   $rootScope,   $window) ->
      'use strict'
      $rootScope.activeMenu = "add"
      $scope.expenses = JSON.parse($window.localStorage.getItem('expenses') or '[]')
      $scope.expense = {type: 'cash'}
      $scope.categories = ["Petit-déjeuner", "Déjeuner", "Goûter", "Dîner", "Sortie", "Course", "Loisir", "Voyage", "Sport"]

      $scope.addExpense = ->
        return if !$scope.expense.hasOwnProperty("cost")
        $scope.expenses.push($scope.expense)
        $window.localStorage.setItem '$scope.expenses', JSON.stringify(angular.copy($scope.expenses))
        $scope.resetExpense()
        window.location.hash = "#/list"

      $scope.resetExpense = () ->
        $scope.expense = {type: 'cash'}
      
      $scope.$watch('expenses', (newExpenses, oldExpenses) ->
        if (newExpenses != oldExpenses)
          $window.localStorage.setItem 'expenses', JSON.stringify(angular.copy($scope.expenses))
      , true)
]
