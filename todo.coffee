

window.ToDoControl = ($scope)->
	$scope.items = []
	$scope.searchText=""
	$scope.items.push("a1")
	$scope.items.push("a2")
	$scope.items.push("a3")

	$scope.addItem = ()->
		v = $scope.input_val
		$scope.items.push(v)
	 

	$scope.editItem = ()->
		i = $scope.edit_index
		$scope.items[i]= $scope.edit_val


	$scope.deleteItem = ()->
		t = $scope.delete_index
		$scope.items.splice(t,1)
	
	$scope.searchItem = ()->
		s = $scope.search_val
		$scope.items.splice(t,1)

	 





	return null