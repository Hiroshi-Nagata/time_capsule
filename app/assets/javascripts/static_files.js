$(function(){
  initDropZone();
});

function initDropZone() {
  Dropzone.autoDiscover = false;

  $("#static_file-dropzone1").dropzone({
    maxFilesize: 100,
    addRemoveLinks: true,
    paramName: 'static_file[content_file]',
    success: function(file, response){
      console.log(file.previewElement);
			$(file.previewElement).find('.dz-remove').attr('id',response.itemId);
			$(file.previewElement).addClass('dz-success');

		  $('#target1').attr("href", "/contents/new?content%5Bstatic_file_id%5D=" + response.itemId).css('visibility', 'visible');
		},
    removedfile: function(file){
      var id = $(file.previewTemplate).find('.dz-remove').attr('id');
      $.ajax({
        type: 'POST',
        url: "/static_files/" + id,
        data: { _method: "delete", "authenticity_token": $("#static_file-dropzone input[name=authenticity_token]").val() },
        success: function(data){
  		    $('#target').css('visibility', 'hidden');
          console.log('data.message');
        }
      });

      var previewElement;
      return (previewElement = file.previewElement) != null ? (previewElement.parentNode.removeChild(file.previewElement)) : (void 0);
    }
  });
}
