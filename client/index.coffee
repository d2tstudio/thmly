Posts = new Mongo.Collection(null)

Template.index.rendered = ->
    posts = Meteor.call "loadPosts", (error,results) ->
        if(error)
          console.log(error)
        else
          console.log(results)
          Posts.insert post for post in results.data

Template.index.helpers
  posts: ->
    Posts.find()
