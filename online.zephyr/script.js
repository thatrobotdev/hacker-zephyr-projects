state = "maybe";

function checkOnline(message) {
  fetch(location.protocol + '//online.zephyr?i=' + Math.random()).then(function () {
    document.getElementById('answer').classList.replace(window.state, 'yes');
    window.state = 'yes';
    document.getElementById('answer').innerText = 'Yes!';
    //message.innerText = 'like, we just checked. yes, we will check again in ~60 seconds for you, or when you refresh ;)';
    message.innerText = 'like, we just checked. ;)';
  }).catch(function () {
    document.getElementById('answer').classList.replace(window.state, 'no');
    window.state = 'no';
      document.getElementById('answer').innerText = 'No';
      message.innerText = 'oof, I can\'t connect to the server. rough. :('
  })
}
function setup() {
  const message = document.getElementById('message');
  checkOnline(message);
  //setInterval(checkOnline, 60000);
}
setup();
