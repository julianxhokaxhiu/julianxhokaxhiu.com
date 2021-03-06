const jquery = require('jquery');
$ = window.$ = window.jQuery = jquery;

require('popper.js');
require('bootstrap');
const responsiveToolkit = require('responsive-toolkit');
window.ResponsiveBootstrapToolkit = responsiveToolkit;
require('scrollreveal');

(function($, viewport){
  $(function(){
    var $window = $(window),
        $body = $('body'),
        $sideBar = $('.jx-sidebar'),
        $portfolioLinks = $('.jx-portfolio a');

    $body
    .on( 'click', 'a', function (e){
      var $this = $(this),
          href = $this.attr('href');

      if ( href.indexOf( window.location.hostname ) == -1 ) {
        e.preventDefault();
        window.open( href );
      }
    });

    $portfolioLinks
    .on( 'click', function (e){
      var $this = $(this),
          $modal = $this.siblings('.modal');

      if ( $modal.length ) {
        e.preventDefault();
        e.stopPropagation();
      }

      $modal
      .modal( 'show' );
    });

    // Activate Tooltips
    $('[data-toggle="tooltip"]')
    .tooltip();

    // Activate Scrollspy
    $body
    .scrollspy({
      'target' : '#jx-scrollspy-target',
      'offset': $('.navbar.fixed-top').outerHeight()
    });

    // Sidenav affixing
    $sideBar
    .find( 'ul li a[href^="#"]' )
    .on( 'click', function (e){
       // prevent default anchor click behavior
       e.preventDefault();
       e.stopPropagation();

       // store hash
       var hash = this.hash;

       // animate
       $('html, body').animate({
           scrollTop: $(hash).offset().top - $('.navbar.fixed-top').outerHeight()
         }, 300, function(){

           // when done, add hash to url
           // (default click behaviour)
           history.replaceState({}, '', hash);
         });

    });

    // Rewrite history everytime scrollspy detect a change
    $window
    .on('activate.bs.scrollspy', function (e) {
      history.replaceState({}, '', $('#jx-scrollspy-target .nav-link.active').attr("href"));
    });

    // Set current year
    var currentDate = new Date();
    $('#credits-year').text( currentDate.getFullYear() );
  });
})(jQuery, ResponsiveBootstrapToolkit);