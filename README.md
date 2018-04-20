# GraalVM Docker Image
[GraalVM](http://www.graalvm.org/) is the new Java compiler backend. This Docker Image helps experimenting with [native images](http://www.graalvm.org/docs/getting-started/#native-images).

[![asciicast](https://asciinema.org/a/aVDt2rbrtWnH4rVENZxTl9t3T.png)](https://asciinema.org/a/aVDt2rbrtWnH4rVENZxTl9t3T)

## Usage
Build the image first:

`docker build -t graalvm .`

Mount the current directory:

`docker run --rm -it -v $(pwd):/app graalvm bash`

Now run the following commands:
```bash
cd app
javac HelloWorld.java
native-image HelloWorld 
``` 
