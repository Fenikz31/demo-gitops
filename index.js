import express from 'express';
const app = express();
const port = process.env.PORT || 3000;

app.get( '/', ( req, res ) => {
  res.send( 'Hello, World! #1' );
});

app.listen( port, () => {
  console.log( `Server listening at :${ port }` );
});
