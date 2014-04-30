$(document).ready(function(){

  // filtering
  var $container = $('.opportunities__list ul');

  $container.isotope({
    itemSelector : '.opportunity'
  });

  $('a[data-filter]').click(function(){
    var selector = $(this).attr('data-filter');
    $container.isotope({ filter: selector });
    return false;
  });

});
