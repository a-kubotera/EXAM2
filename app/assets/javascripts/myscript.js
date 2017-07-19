$(document).ready(function() {
  alert();
    $('#your_picture').error(function() {
        $(this).attr({
            src: '../images/erased.png',
            alt: "Herokuに消されてるよ！"
        });
    });
});
