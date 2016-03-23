$(function() {

    var scrollMagicController = new ScrollMagic();

    var tween1 = TweenMax.to('#animation-1', 0.3, {
        backgroundColor: 'rgb(255, 253, 61)',
        scale: 10,
        rotation: 180
    });
    var scene1 = new ScrollScene({
        triggerElement: '#scene-1',
        offset: 50
    })
        .setClassToggle('main', 'scene-1-active')
        .setTween(tween1)
        .addTo(scrollMagicController);

    // Create Animation for 0.5s
    var tween2 = TweenMax.to('#animation-2', 0.3, {
        backgroundColor: 'rgb(224, 82, 252)',
        scale: 10,
        rotation: 180
    });

    var scene2 = new ScrollScene({
        triggerElement: '#scene-2',
        offset: 50
    })
        .setClassToggle('main', 'scene-2-active')
        .setTween(tween2)
        .addTo(scrollMagicController);



    // Create Animation for 0.5s
    var tween3 = TweenMax.to('#animation-3', 0.3, {
        backgroundColor: 'rgb(17, 0, 98)',
        scale: 10,
        rotation: 180
    });

    var scene3 = new ScrollScene({
        triggerElement: '#scene-3',
        offset: 50
    })
        .setClassToggle('main', 'scene-3-active')
        .setTween(tween3)
        .addTo(scrollMagicController);
    var tween3 = TweenMax.to('.rotate', 0.7, {
        scale: 1,
        rotation: 90
    });

    var scene4 = new ScrollScene({
        triggerElement: '.start_page',
        //offset: 200
    })
        //.setClassToggle('main', 'scene-3-active')
        .setTween(tween3)
        .addTo(scrollMagicController);





    // Add debug indicators fixed on right side
    scene1.addIndicators();
    scene2.addIndicators();
    scene3.addIndicators();
    scene4.addIndicators();

});