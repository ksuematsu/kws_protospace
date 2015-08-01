$(document).ready(function(){
    $(".show_newest").click(function(){
        $(".row#prototypes, .disabled#prototypes").hide();
        $(".row#newest-prototypes").show();
    });
    $(".show_popular").click(function(){
        $(".row#prototypes, .disabled#prototypes").show();
        $(".row#newest-prototypes").hide();
    });
});

