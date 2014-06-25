# For more information see: http://emberjs.com/guides/routing/

App.Router.reopen
  location: 'auto'
  rootURL: '/'

App.Router.map ->
  @resource 'projects', path: '/', ->
    @resource 'project', path: '/project/:project_id', ->
      @resource 'activities', path: '/activities'

App.ProjectsRoute = Ember.Route.extend
  model: -> @store.find "project"

App.ProjectRoute = Ember.Route.extend
  model: (params) ->
    @store.find "project", params.project_id

App.ActivitiesRoute = Ember.Route.extend
  model: ->
    project = @modelFor('project')
    @store.find('activity', { project_id: project.id })
