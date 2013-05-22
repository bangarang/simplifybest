angular.module('estimator', []);



function EstimatorCtrl($scope) {
  $scope.tonercost = 0;
  $scope.toneryield = 1;
  $scope.tonercpc = 0;
  $scope.drumcost = 0;
  $scope.drumyield = 1;
  $scope.drumcpc = 0;
  $scope.pmcost = 0;
  $scope.pmyield = 1;
  $scope.pmcpc = 0;
  $scope.totalcpc = 0;

  $scope.tonerCPC = function() {
    $scope.tonercpc = $scope.tonercost / $scope.toneryield; 
    return $scope.tonercpc;
  }

  $scope.noToner = function() {
    if($scope.toner) {
      $scope.tonercost = '';
      $scope.toneryield = '';
      $scope.tonercpc = '';
    }
    else {
      $scope.tonercost = 0;
      $scope.toneryield = 1;
      $scope.tonercpc = 0;
    }
  }

  $scope.drumCPC = function() {
    $scope.drumcpc =$scope.drumcost / $scope.drumyield; 
    return $scope.drumcpc;
  }

  $scope.noDrum = function() {
    if($scope.drum) {
      $scope.drumcost = '';
      $scope.drumyield = '';
      $scope.drumcpc = '';
    }
    else {
      $scope.drumcost = 0;
      $scope.drumyield = 1;
      $scope.drumcpc = 0;
    }
  }

  $scope.pmCPC = function() {
    $scope.pmcpc = $scope.pmcost / $scope.pmyield; 
    return $scope.pmcpc;
  }

  $scope.noPm = function() {
    if($scope.pm) {
      $scope.pmcost = '';
      $scope.pmyield = '';
      $scope.pmcpc = '';
    }
    else {
      $scope.pmcost = 0;
      $scope.pmyield = 1;
      $scope.pmcpc = 0;
    }
  }

  $scope.totalCPC = function() {
    $scope.totalcpc = $scope.tonercpc + $scope.pmcpc + $scope.drumcpc; 
    return $scope.totalcpc;
  }

}

