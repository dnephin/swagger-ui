class ContentTypeView extends Backbone.View
  initialize: ->

  render: ->
    template = @template()
    $(@el).html(template(@model))

    # TODO: dont' do for isReadOnly
    $('label[for=contentType]', $(@el)).text('Response Content Type')

    @

  template: ->
    Handlebars.templates.content_type

