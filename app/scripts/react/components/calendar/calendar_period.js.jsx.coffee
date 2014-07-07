###* @jsx React.DOM ###

window.CalendarPeriod = CalendarPeriod = React.createClass

  render: ->
    markerNodes = @props.period.markers.map (marker) ->
      `<CalendarMarker marker={ marker } key={ marker.entry_id }></CalendarMarker>`

    return `<li className="calendar__period">
              <div className="calendar__period-date">{ this.props.period.title }</div>
              <div className="calendar__period-line">{ markerNodes }</div>
            </li>`

module.exports = CalendarPeriod