 

angular.module('ToDo',  [])
.controller('ToDoControl', ($scope)->
	$scope.items = []
	$scope.searchText=""
	$scope.items.push("a1")
	$scope.items.push("a2")
	$scope.items.push("a3")

	$scope.addItem = ()->
		v = $scope.input_val
		$scope.items.push(v)
		$scope.input_val=""
	 

	$scope.editItem = ()->
		i = $scope.edit_index
		$scope.items[i]= $scope.edit_val
		$scope.edit_index=""
		$scope.edit_val=""


	$scope.deleteItem = ()->
		t = $scope.delete_index
		$scope.items.splice(t,1)
		$scope.delete_index="" 

	return null
)
.directive("nbclick", () ->
		link : (scope, elm, attrs) ->
	    	elm.bind('click',(evt)->
	    		evt.preventDefault() 
	    		alert("add")
	    		scope.addItem()) 
)

