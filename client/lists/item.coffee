Template.listItem.rendered = ->
  $('body').css('background-color', Session.get('color'))

Template.listItem.helpers
  isOwner: ->
    @isOwner Meteor.user()

Template.listItem.events
  'click .delete': ->
    @destroy()
