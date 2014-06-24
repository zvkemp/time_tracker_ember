# For more information see: http://emberjs.com/guides/routing/

App.Router.map ->
  @resource 'projects', path: '/'

App.ProjectsRoute = Ember.Route.extend
  model: -> 
    window.store = @store
    console.log('model hook', @store.find "project")

    @store.find "project"

