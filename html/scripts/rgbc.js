//------------------------------\\
//---\\ BOII | DEVELOPMENT //---\\
//------------------------------\\

$(document).ready(function(){
    window.addEventListener('message', function(event) {
        var item = event.data;
            if (item.open == true) {
            $('#main-container').removeClass('hidden');
        } else if (item.open == false) {
            $('#main-container').addClass('hidden');
        }
    })
    $(document).keyup(function (exit) {
        if (exit.keyCode === 27) {     
            $.post('https://boii-rgbcontroller/CloseController', JSON.stringify({}));    
        }      
    });
    $('.onkey').click(function() {
        $.post('https://boii-rgbcontroller/Toggle', JSON.stringify({}));
    })
    $('.white').click(function() {
        var args = $(this).data('args');
        $.post('https://boii-rgbcontroller/ChangeColour', JSON.stringify({
            args: args
        }));
    })
    $('.blue').click(function() {
        var args = $(this).data('args');
        $.post('https://boii-rgbcontroller/ChangeColour', JSON.stringify({
            args: args
        }));
    })
    $('.eblue').click(function() {
        var args = $(this).data('args');
        $.post('https://boii-rgbcontroller/ChangeColour', JSON.stringify({
            args: args
        }));
    })
    $('.mgreen').click(function() {
        var args = $(this).data('args');
        $.post('https://boii-rgbcontroller/ChangeColour', JSON.stringify({
            args: args
        }));
    })
    $('.lgreen').click(function() {
        var args = $(this).data('args');
        $.post('https://boii-rgbcontroller/ChangeColour', JSON.stringify({
            args: args
        }));
    })
    $('.yellow').click(function() {
        var args = $(this).data('args');
        $.post('https://boii-rgbcontroller/ChangeColour', JSON.stringify({
            args: args
        }));
    })
    $('.gshower').click(function() {
        var args = $(this).data('args');
        $.post('https://boii-rgbcontroller/ChangeColour', JSON.stringify({
            args: args
        }));
    })
    $('.orange').click(function() {
        var args = $(this).data('args');
        $.post('https://boii-rgbcontroller/ChangeColour', JSON.stringify({
            args: args
        }));
    })
    $('.red').click(function() {
        var args = $(this).data('args');
        $.post('https://boii-rgbcontroller/ChangeColour', JSON.stringify({
            args: args
        }));
    })
    $('.ppink').click(function() {
        var args = $(this).data('args');
        $.post('https://boii-rgbcontroller/ChangeColour', JSON.stringify({
            args: args
        }));
    })
    $('.hpink').click(function() {
        var args = $(this).data('args');
        $.post('https://boii-rgbcontroller/ChangeColour', JSON.stringify({
            args: args
        }));
    })
    $('.purple').click(function() {
        var args = $(this).data('args');
        $.post('https://boii-rgbcontroller/ChangeColour', JSON.stringify({
            args: args
        }));
    })
    $('.blacklight').click(function() {
        var args = $(this).data('args');
        $.post('https://boii-rgbcontroller/ChangeColour', JSON.stringify({
            args: args
        }));
    })
})
