refreshFrequency: 21600000

command: '~/Library/"Application\ Support"/Übersicht/widgets/patchfriday.sh'

render: (output) -> """
  <img width='500px' src='patchfriday.png'/>
"""

# CSS Style
style: """
  margin:0
  padding:0px
  left: 20px
  top: 75%
  background:rgba(#000, .25)
  border-radius:10px
  background: rgb(255, 255, 255) transparent;
  background: rgba(255, 255, 255, 0.0);
"""
