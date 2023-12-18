const escapedHulk = document.getElementById('escaped-hulk')

const btnDoor = document.getElementById('btnDoor')
const btnHacked = document.getElementById('btnHacked')
const statusEl = document.getElementById('status')
const maliciousFrame = document.getElementById('parent')

window.addEventListener('message', event => {
  const cookie = event.data
  if (cookie) {
    if (cookie.indexOf('doorcode=') !== -1) {
      const code = cookie.split(`doorcode=`).pop().split(';').shift()
      console.log(`Door code hacked: "${code}"`)
      
      escapedHulk.src = 'hulk-smash.jpg'
      statusEl.textContent = "Access Granted! THE HULK HAS ESCAPED!"
    } else {
      escapedHulk.src = ''
      statusEl.textContent = "Access denied!"
    }
  }
})

btnDoor.onclick = () => {
  maliciousFrame.contentWindow.postMessage('12345')
  statusEl.textContent = "Access denied!"
}
btnHacked.onclick = () => { maliciousFrame.contentWindow.postMessage('H4ck3d!', 'http://localhost:9001') }