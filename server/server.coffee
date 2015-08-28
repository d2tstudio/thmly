Meteor.methods loadPosts: (location) ->
      @unblock()
      Meteor.http.call "GET", "http://jobs.github.com/positions.json?location="+location
