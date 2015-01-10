angular.module('depenses', [
  'ngRoute'
  'depenses.todo'
  'depenses.expenses'
])
.config ($routeProvider) ->
  'use strict'
  $routeProvider
    .when '/list',
      controller: 'ExpensesListCtrl'
      templateUrl: '/depenses/expenses/list.html'
    .when '/add',
      controller: 'ExpensesAddCtrl'
      templateUrl: '/depenses/expenses/add.html'
    .otherwise
      redirectTo: '/list'

