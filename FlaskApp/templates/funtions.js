(function($){
  $(function(){

    $(document).ready(function(){
      $('.collapsible').collapsible();
    });

    //$('.collapsible').collapsible();
    //$('.button-collapse').sideNav({
    //      menuWidth: 300, // Default is 300
    //      edge: 'right', // Choose the horizontal origin
    //      closeOnClick: true, // Closes side-nav on <a> clicks, useful for Angular/Meteor
    //      draggable: true, // Choose whether you can drag to open on touch screens,
    //      onOpen: function(el) { /* Do Stuff */ }, // A function to be called when sideNav is opened
    //      onClose: function(el) { /* Do Stuff */ }, // A function to be called when sideNav is closed
    //    }
    //  );

    // Show sideNav
    $('.button-collapse').sideNav('show');
    // Hide sideNav
    $('.button-collapse').sideNav('hide');
    // Destroy sideNav
    $('.button-collapse').sideNav('destroy');

  }); // end of document ready
})(jQuery); // end of jQuery name space
