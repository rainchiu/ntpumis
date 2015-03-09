# @jsx React.DOM
React = require 'react'
Router = require 'react-router'
DefaultRoute = Router.DefaultRoute
Link = Router.Link
Route = Router.Route
RouteHandler = Router.RouteHandler
NotFoundRoute = Router.NotFoundRoute
Navbar = require './components/navbar'
Footer = require './components/footer'
News = require './news'
Index = require './index'
Introduction = require './introduction'
NotFound = require './components/404'

Teacher = require './service/teacher'
Post = require './service/post.coffee'
Main = React.createClass
  displayName:'Main'
  getInitialState:->
    TEACHER_LIST:Teacher.getList()
    INITIAL_POST:Post.getList()
  render:->
    <div>
      <Navbar />
      <RouteHandler TeacherList={@state.TEACHER_LIST}
                    PostList={@state.INITIAL_POST.posts_dataset}
                    InitialPosts={@state.INITIAL_POST.initial_posts}/>
      <Footer />
    </div>
routes =
  <Route name="index" path="/" handler={Main}>
    <Route name="news" handler={News}/>
    <Route name="introduction" handler={Introduction}/>
    <DefaultRoute handler={Index}/>
    <NotFoundRoute handler={NotFound}/>
  </Route>
module.exports =
  Router.run routes,(Handler)->
    React.render <Handler />, document.querySelector '#app'
