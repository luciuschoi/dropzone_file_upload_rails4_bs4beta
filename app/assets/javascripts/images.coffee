
$ ->
  $(document).delegate '*[data-toggle="lightbox"]', 'click', (event) ->
    event.preventDefault()
    $(this).ekkoLightbox()
    return

  # disable auto discover
  Dropzone.autoDiscover = false
  dropzone = new Dropzone(".dropzone",
    maxFilesize: 256 # set the maximum file size to 256 MB
    paramName: "image[avatar]" # Rails expects the file upload to be something like model[field_name]
    addRemoveLinks: false # don't show remove links on dropzone itself.
  )
  dropzone.on "success", (file) ->
    # @removeFile file
    $.getScript "/images"
    return

  return


