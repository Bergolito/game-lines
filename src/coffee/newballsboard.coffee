class NewBallsBoard

  COLORS = ["circle-red", "circle-green", "circle-blue", "circle-yellow", "circle-orange"]

  constructor : (@w = 3, @h = 1, @newCirclesNum = 3, @lineLength = 5) ->

    addCell = (rowElement, cell) ->
      cellElement = cell.getElement()
      # cellElement.addEventListener "click", (event) =>
      #   @selectCell cell
      rowElement.appendChild cellElement
      @cells[i].push cell
      @emptyCells.push cell

    @enabled = true
    # Two-dimensional array of cells.
    @cells = []
    @emptyCells = []
    @element = document.createElement "tbody"
    for i in [0..@h - 1]
      @cells.push []
      rowElement = document.createElement "tr"
      @element.appendChild rowElement
      for j in [0..@w - 1]
        cell = new Cell @, i, j
        addCell.call @, rowElement, cell
    @addNewCircles()

  # Reference to the DOM element.
  getElement : () ->
    @element
    
  addNewCircles : () ->
    i = 0
    # Add the predefined number of new circles.
    while i++ < @newCirclesNum
      # Get a random empty cell.
      randomCellIndex = Math.floor Math.random() * @emptyCells.length
      randomCell = @emptyCells[randomCellIndex]
      # Remove the cell from the empty cells array as we put the circle into it.
      @emptyCells.splice randomCellIndex, 1
      # Get a random color for the new circle.
      randomColorIndex = Math.floor Math.random() * COLORS.length
      randomColor = COLORS[randomColorIndex]
      # Put the circle into the cell.
      randomCell.show randomColor, true
      console.log('Novas bolas=',randomCellIndex,randomColor)
  
  getQueueHashKey : (column, row) ->
    "#{column}.#{row}"
    



