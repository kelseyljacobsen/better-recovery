angular
  .module("BetterRecovery")
  .controller("indexController", indexController);

  function indexController($scope) {
    $scope.showDoctors = false;
  }