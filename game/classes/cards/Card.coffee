# All cards in the game will have game stats
class GameStats
	constructor: ->
		@product = 0
		@security = 0
		@espionage = 0

#Everything will be a card
class Card
	constructor: (@id, @icon = 'none') ->
		@name = @constructor.name
		@stats = new GameStats
		@ownerGrouping = null # a reference to the grouping that owns this card

		###
		# Related to visual representation
		###
		@isFlipped = no # is face up?
		@isVisible = yes # is showing in the view?
		@isRetained = no # is contained in a corporation?

	tick: (board) ->
		console.log @name, 'tick'

	onHack: ->

	bonusTick: ->  # For subsidiary bonus perks on tick


module.exports = Card
