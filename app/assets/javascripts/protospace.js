$(document).ready(function(){
    var prototypes = $(".row#prototypes, .disabled#prototypes");
    var newest = $(".row#newest-prototypes");
    $(".show_newest").click(function(){
        prototypes.hide();
        newest.show();
    });
    $(".show_popular").click(function(){
        prototypes.show();
        newest.hide();
    });
});

