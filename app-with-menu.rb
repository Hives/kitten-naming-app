require 'sinatra'

pages = [
  { route: "/", content: "Homepage" },
  { route: "/my_name", content: "My name is Paul" },
  { route: "/cat", content: "<img style='border: thick dashed red' src='http://bit.ly/1eze8aE' />" },
]

pages.each do |page|
  get page[:route] do
    content = page[:content]
    content << "<ul>"
    pages.each do |page|
      content << "<li><a href='#{page[:route]}'>#{page[:route]}</a></li>"
    end
    content << "</ul>"
    content
  end
end
