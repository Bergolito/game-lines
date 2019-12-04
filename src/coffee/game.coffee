window.onload = () ->
  scoreboard = new Scoreboard
  document.getElementById("scoreboard").appendChild scoreboard.getElement()

  newballs = new NewBallsBoard
  document.getElementById("newballsboard").appendChild newballs.getElement()

  board = new Board scoreboard
  document.getElementById("board").appendChild board.getElement()