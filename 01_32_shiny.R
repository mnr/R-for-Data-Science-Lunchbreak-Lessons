# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: Example file for shiny

# main idea: 


How we built a Shiny App for 700 users?
  
  http://feedproxy.google.com/~r/RBloggers/~3/yAEgznzmyKg/?utm_source=feedburner&utm_medium=email
  
  
  Posted: 16 Oct 2017 05:00 PM PDT
One of our senior data scientists, Olga Mierzwa-Sulima spoke at the userR! conference in Brussels to a packed house. The seats were full and there were audience members spilling out the doors.



Source: https://twitter.com/matlabulous/status/882530484374392834

Olga’s talk was entitled ‘How we built a Shiny App for 700 users?’ She went over the main challenges associated with scaling a Shiny application, and the methods we used to resolve them. The talk was partly in the form of a case study based on Appsilon’s experience.

In this talk, Olga shared her experience from a real-life case study of building an app used daily by 700 users where our data science team tackled all these problems. This, to our knowledge, was one of the biggest production deployments of a Shiny App.

Shiny has proved itself a great tool for communicating data science teams’ results. However, developing a Shiny app for a large scope project that will be used commercially by more than dozens of users is not easy.

The first challenge is User Interface (UI): the expectations are that the app should not vary from modern web pages.

Secondly, performance directly impacts user experience (UX), and it’s difficult to maintain efficiency with growing requirements and user base.

She showed an innovative approach to building a beautiful and flexible Shiny UI using shiny.semantic package (an alternative to standard Bootstrap). Furthermore, she talked about non-standard optimization tricks we implemented to gain performance. Then she discussed challenges regarding complex reactivity and offered solutions. Finally, she went through implementation and deployment process of the app using a load balancer.

Appsilon’s open-source packages allow you to build superior Shiny dashboards. Make sure to check out shiny.semantic, shiny.collections, and shiny.router and follow us on twitter to get updates about shiny.i18n — our brand new package for internationalization.

