window.TastyNotifyController =

  HIDE_EVENT: TastyNotify.HIDE_EVENT

  notify: (type, text, timeout = 3000) ->
    container = $('<\div>').appendTo('body').get(0)
    React.renderComponent TastyNotify(
        type:    type
        text:    text
        timeout: timeout
      ), container
    return

  errorResponse: (response, timeout = 3000) ->
    console.error? 'errorResponse', response
    message = response.message if response.message?
    message ||= response.responseJSON.error if response.responseJSON?
    message ||= response.error if response.error? && response.error.length>0
    # fallback для старого API
    message ||= "Ошибка сети: #{response.statusText}"
    @notify 'error', message, timeout

  hideAll: ->
    $(document).trigger @HIDE_EVENT
