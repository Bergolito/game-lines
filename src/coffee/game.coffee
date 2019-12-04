window.onload = () ->
  scoreboard = new Scoreboard
  document.getElementById("scoreboard").appendChild scoreboard.getElement()

  #newBallsPanel = new NewBallsPanel
  #document.getElementById("new_balls_panel").appendChild newBallsPanel.getElement()

  board = new Board scoreboard
  document.getElementById("board").appendChild board.getElement()