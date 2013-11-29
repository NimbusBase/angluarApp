

window.ToDoControl = ($scope)->
	$scope.items = []
	$scope.items.push("a1")
	$scope.items.push("a2")
	$scope.items.push("a3")

	$scope.addItem = ()->
		v = document.getElementById("input_item").value 
		$scope.items.push(v)



	return null