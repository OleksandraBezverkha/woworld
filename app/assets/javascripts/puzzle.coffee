$(document).ready ->
  mySettings =
    cols: 3
    hole: 3
    numbers: false
    control:
      toggleNumbers: false
#      counter: false
#      timer: false
    animation:
      shuffleRounds: 1
      slidingSpeed: 100
      shuffleSpeed: 200
  # call jqPuzzle with mySettings on an image with id 'myImage'
  $('.jqPuzzle').jqPuzzle mySettings
#  $('.piece').click ->
#    $('.modal.puzzle').modal()