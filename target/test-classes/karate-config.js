function fn() {
   ssl: true
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
    cookie: "plugvoc_session=eyJpdiI6Ik5jUmR0QmNtaWgzaEhVTzNBNWZaS0E9PSIsInZhbHVlIjoibStrQmg3dXVMVU9jV1VXVktlTUFkcjYwREZrMjJQdWZsL204MnpHcjU1OW83bTJOWm1nV29TS0ptRDY4NlFkT0FSOVUvNlZ0UVU4dkdxems4RG96K3ZzdXhwbk9OWWV3Rm53V1V5R1A1TGFGUXlTTW45dTRvTlAxQkRjeVUwV2wiLCJtYWMiOiI5NmFjYzM1ZTZhNTE4NmViZWUyODBhYTI4MzRmOWUyNDIzNWMwNTE2NDgyODg3NjhlZjMyYzM5NTZhMjNlZWRkIn0%3D; expires=Wed, 23-Aug-2023 17:52:39 GMT; Max-Age=7200; path=/; secure; httponly; samesite=lax"
  }
  if (env == 'dev') {
    // customize
    // e.g. config.foo = 'bar';
  } else if (env == 'e2e') {
    // customize
  }
  return config;
}
