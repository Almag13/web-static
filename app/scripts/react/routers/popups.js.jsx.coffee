###* @jsx React.DOM ###

RRLocations = ReactRouter.Locations
RRLocation = ReactRouter.Location

console.log 'popups loaded'
window.DesignSettings = React.createClass
  render: ->
    console.log 'design settings rendered'
    `<div>design settings</div>`

window.PopupsRouter = React.createClass
  render: ->
    debugger
    `<RRLocations>
      <RRLocation path='#design-settings' handler={DesignSettings} />
    </RRLocations>`

