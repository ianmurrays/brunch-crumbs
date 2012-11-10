module.exports = class View extends Backbone.View
  render: ->
    oldEl = @$el
    newEl = $(@template.render())
    
    @setElement(newEl)
    oldEl.replaceWith(newEl)
    
    @viewDidLoad?()
    this