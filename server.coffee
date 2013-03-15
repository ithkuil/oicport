express = require 'express'
fs = require 'fs'

express = require 'express'
app = express()

app.use express.static('public')

html = fs.readFileSync 'index.html', 'utf8'

app.get '/', (req, res, next) ->
  res.end html

app.listen 80
console.log 'Listening on port 80'

process.on 'uncaughtException', (err) ->
  console.log err