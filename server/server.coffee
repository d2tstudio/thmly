Meteor.methods loadPosts: ->
      @unblock()
      Meteor.http.call "GET", "http://jobs.github.com/positions.json"
