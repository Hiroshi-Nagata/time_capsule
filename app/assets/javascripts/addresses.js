var addressfunc = function (id) {
  $.ajax({
    type: 'GET',
    url: "/addresses/" + id,
    success: function(result){
      $('#show').html(result);
    }
  });
}
    