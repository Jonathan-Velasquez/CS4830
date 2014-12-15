var app = require('express')();
var http = require('http').Server(app);
var io = require('socket.io')(http);

var usernames = {};

app.get('/', function(req, res){
  res.sendFile(__dirname + '/index.html');
});

  io.sockets.on('connection', function(socket){
  
	  socket.on('adduser', function(username){
		  socket.username = username;
		  usernames[username] = username;
		socket.broadcast.emit('updatechat', username + ' has connected to this room');
	  });
	  socket.on('sendchat', function (data) {
			io.sockets.emit('updatechat', socket.username, data);
	  });
	  socket.on('disconnect', function(msg){
		socket.broadcast.emit('updatechat', socket.username + ' has disconnected');
		delete usernames[socket.username];
	  });
	  
});

http.listen(3000, function(){
  console.log('listening on *:3000');
});