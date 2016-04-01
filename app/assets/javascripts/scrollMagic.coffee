$ ->
  scrollMagicController = new ScrollMagic
  tween2 = TweenMax.to('#animation-2', 0.3,
    backgroundColor: 'rgb(224, 82, 252)'
    scale: 10
    rotation: 180)
  scene2 = new ScrollScene(
    triggerElement: '#scene-2'
    offset: 50).setClassToggle('main', 'scene-2-active').setTween(tween2).addTo(scrollMagicController)
  # Create Animation for 0.5s
  tween3 = TweenMax.to('#animation-3', 0.3,
    backgroundColor: 'rgb(255, 61, 79)'
    scale: 10
    rotation: 180)
  scene3 = new ScrollScene(
    triggerElement: '#scene-3'
    offset: 50).setClassToggle('main', 'scene-3-active').setTween(tween3).addTo(scrollMagicController)
  tween4 = TweenMax.to('.rotate', 0.7,
    scale: 1
    rotation: 90)
  scene4 = new ScrollScene(triggerElement: '.start_page').setTween(tween4).addTo(scrollMagicController)
  # Create Animation for 0.5s
  tween5 = TweenMax.to('#animation-5', 0.3,
    backgroundColor: 'rgb(66, 253, 219)'
    scale: 10
    rotation: 180)
  scene5 = new ScrollScene(
    triggerElement: '#scene-5'
    offset: 50).setClassToggle('main', 'scene-5-active').setTween(tween5).addTo(scrollMagicController);
  # Add debug indicators fixed on right side
#  scene1.addIndicators();
  scene2.addIndicators();
  scene3.addIndicators()
  scene4.addIndicators()
  scene5.addIndicators()