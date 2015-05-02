angular.module 'mergeAndHack', []

	.controller 'GameController', ($scope, $window) ->
		_theGame = new $window.Game
		$scope.game = _theGame
		$scope.game.start()

		$scope.selectEventCard = (index) ->
			_theGame.board.selectCard index, 0

		$scope.chooseMerge = ->
			_theGame.board.selectMerge()

		$scope.confirmMerger = (shouldMerge) ->
			_theGame.board.confirmMerger shouldMerge

		$scope.chooseHack = ->
			_theGame.board.selectHack()

		$scope.confirmHack = (target) ->
			console.log 'confirming hack'
			_theGame.board.confirmHack target

		$scope.revealPuzzleCell = (x, y) ->
			_theGame.board.hackPuzzleCellClick x, y
