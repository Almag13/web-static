###* @jsx React.DOM ###

window.CalendarHeader = React.createClass

  propTypes:
    date: React.PropTypes.object.isRequired

  render: ->
    day  = @props.date.format 'D'
    info = @props.date.format('D MMMM <br/> dddd<br/> LT').slice 2

    if moment().year() != @props.date.year()
      info = @props.date.format('D MMMM <br/> dddd<br/> YYYY').slice 2

    return `<div className="calendar__date">
              <div className="calendar__date-day">{ day }</div>
              <div className="calendar__date-info"
                   dangerouslySetInnerHTML={{ __html: info }}>
              </div>
            </div>`