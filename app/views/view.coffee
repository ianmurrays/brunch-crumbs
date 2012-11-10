module.exports = class View extends Backbone.View
  render: ->
    @setElement @$el.children(1)
    @setVariables?()
    this