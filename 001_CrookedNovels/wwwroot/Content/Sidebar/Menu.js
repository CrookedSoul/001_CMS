$(function() {
    // this will get the full URL at the address bar
    var url = window.location.href;

    // passes on every "a" tag
    $(".sidebar a").each(function() {
        // checks if its the same on the address bar
        if (url == (this.href)) {
            $(this).closest("li").addClass("active");
            //for making parent of submenu active (does not work for now)
            //$(this).closest("li").parent().parent().addClass("active");
        }
    });
});     