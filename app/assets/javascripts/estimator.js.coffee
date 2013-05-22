app = angular.module("estimator", [])

@EstimatorCtrl = ["$scope", ($scope) ->
  $scope.tonercost = 0
  $scope.toneryield = 1
  $scope.tonercpc = 0
  $scope.drumcost = 0
  $scope.drumyield = 1
  $scope.drumcpc = 0
  $scope.pmcost = 0
  $scope.pmyield = 1
  $scope.pmcpc = 0
  $scope.totalcpc = 0

  $scope.tonerCPC = ->
    $scope.tonercpc = $scope.tonercost / $scope.toneryield
    $scope.tonercpc

  $scope.noToner = ->
    if $scope.toner
      $scope.tonercost = ""
      $scope.toneryield = ""
      $scope.tonercpc = ""
    else
      $scope.tonercost = 0
      $scope.toneryield = 1
      $scope.tonercpc = 0

  $scope.drumCPC = ->
    $scope.drumcpc = $scope.drumcost / $scope.drumyield
    $scope.drumcpc

  $scope.noDrum = ->
    if $scope.drum
      $scope.drumcost = ""
      $scope.drumyield = ""
      $scope.drumcpc = ""
    else
      $scope.drumcost = 0
      $scope.drumyield = 1
      $scope.drumcpc = 0

  $scope.pmCPC = ->
    $scope.pmcpc = $scope.pmcost / $scope.pmyield
    $scope.pmcpc

  $scope.noPm = ->
    if $scope.pm
      $scope.pmcost = ""
      $scope.pmyield = ""
      $scope.pmcpc = ""
    else
      $scope.pmcost = 0
      $scope.pmyield = 1
      $scope.pmcpc = 0

  $scope.totalCPC = ->
    $scope.totalcpc = $scope.tonercpc + $scope.pmcpc + $scope.drumcpc
    $scope.totalcpc

  $scope.toCPC = ->
    $scope.cpc = $scope.totalcpc

]