// A client for the capitalization server. After connecting, every line
// sent to the server will come back capitalized.
//
// Use interactively:
//
//   node capitalizeclient.js 10.0.1.40
//
// Or pipe in a file to be capitalized:
//
//   node capitalizeclient.js 10.0.1.40 < myfile

const net = require('net');
const readline = require('readline');

const client = new net.Socket();
client.connect(59898, 2500, () => {
  console.log('Connected to server');
});

var c = document.getElementById("myCanvas");
var ctx = c.getContext("2d");

while(true) {

        dx = 1;
        dy = 1;
        client.write(dx);
        client.write(dy);
        client.on('data', (data) => {
        //console.log(data.toString('utf-8'));
        [x,y] = data.toString('utf-8').split(" ");
        ctx.beginPath();
        ctx.arc(x, y, 50, 0, 2 * Math.PI);
        ctx.stroke();
        ctx.clearRect(0, 0, 300, 150);
    });

}



const rl = readline.createInterface({ input: process.stdin });
rl.on('line', (line) => {
  client.write(`${line}\n`);
});
rl.on('close', () => {
  client.end();
});