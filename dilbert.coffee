refreshFrequency: 21600000

command: "~/bin/dilbert.sh"

render: (output) -> """
  <img width='500px' src='dilbert.gif'/>
"""

# CSS Style
style: """
  margin:0
  padding:0px
  left:20px
  top:390px
  background:rgba(#000, .25)
  border-radius:10px
  background: rgb(255, 255, 255) transparent;
  background: rgba(255, 255, 255, 0.0);
"""
