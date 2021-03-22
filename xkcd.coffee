
command: "curl --silent https://xkcd.com/info.0.json"

# Set the refresh frequency (milliseconds) to every 6 hours
refreshFrequency: 21600000

# Render the output.
render: (output) -> """
  <div id='container'></div>
"""

update: (output, domEl) ->
  xkcd = JSON.parse(output)
  container = $(domEl).find('#container')
  content =
    """
    <img height='350px' src="#{xkcd.img}"/>
    """
  $(container).html content

# CSS Style
style: """
  margin:0
  padding:0px
  left:20px
  top:20px
  background:rgba(#000, .25)
  border-radius:10px
  background: rgb(255, 255, 255) transparent;
  background: rgba(255, 255, 255, 0.0);
"""
