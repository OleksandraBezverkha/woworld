$(document).ready(function() {
    $('.fullpage').fullpage({
        menu: '.navbar',
        scrollingSpeed: 700,
        verticalCentered: true,
        resize : false,
        anchors:['firstPage', 'secondPage', 'thirdPage'],
        navigation: true,
        navigationPosition: 'right',
        navigationTooltips:['firstPageTooltip', 'secondPageTooltip', 'thirdPageTooltip', 'fourthPageTooltip'],
        css3: true
    });
});