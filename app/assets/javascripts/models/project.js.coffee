App.Project = DS.Model.extend
  activities: DS.hasMany('activity')
  name: DS.attr('string')
  description: (->
    "Project: #{@get('name')}"
  ).property('name')
