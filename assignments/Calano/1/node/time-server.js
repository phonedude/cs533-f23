const net = require('net')

const pad = (num) => num < 10 ? `0${num}` : num

const server = net.createServer(socket => {
  const date = new Date()
  const formatedDate = `${date.getFullYear()}-${pad(date.getMonth()+1)}-${pad(date.getDate())} ${pad(date.getHours())}:${pad(date.getMinutes())}\n`

  socket.write(formatedDate)
  socket.end()
})

server.listen(process.argv[2])