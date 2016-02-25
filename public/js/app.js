$(function() {
  $('.image_list').on('click', function() {
    var item = $(this).children()[3]
    $(item).toggleClass('hidden');

  });
});