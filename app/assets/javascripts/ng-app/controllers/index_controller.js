angular
  .module("BetterRecovery")
  .controller("indexController", indexController);

  function indexController($scope) {
    $scope.showKneeDoctors = false;
    $scope.showShoulderDoctors = false;
    $scope.showElbowDoctors = false;
    $scope.showFootDoctors = false;
    $scope.showHandDoctors = false;
    $scope.showSpineDoctors = false;
    $scope.showHipDoctors = false;
    $scope.showReviews = false;
  }


