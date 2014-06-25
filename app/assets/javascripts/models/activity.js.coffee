App.Activity = DS.Model.extend
  project: DS.belongsTo('project')
  minutes: DS.attr('number')
  description: DS.attr('string')

  inspect: (->
    "Activity #{@get('id')}: #{@get('minutes')} minutes"
  ).property('minutes')
