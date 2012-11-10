View = require './view'

module.exports = class HelloView extends View
  # Don't use things like `className` or `tagName` here.
  # The template should contain all of that. `render` on 
  # View should take care of binding all correctly.
  template: require './templates/hello'

  # Call `super` instead of `this` on return to correctly bind the template
  render: ->
    @$el.html @template.render()
    super

  # This method gets called on super.render() to add all 
  # variables into the view programatically. Since we're using
  # editable templates, we can't add logic in there, so all that logic
  # should go here. Think of it as managing views on iOS or desktop native
  # apps.
  setVariables: ->
    # @$('.name').html @model.get('name')
    # @$('.last-name').html @model.get('last_name')