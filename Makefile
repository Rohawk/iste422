#  Makefile for HelloWorld.java
#  iste422 - App Development
#  Hillary Borrino

default: 
	mkdir build
	mkdir build/jar
	mkdir build/classes
	javac -sourcepath src -d build/classes src/oata/HelloWorld.java
	java -cp build/classes oata.HelloWorld 
	echo Main-Class: oata.HelloWorld>myManifest
	jar cfm build/jar/HelloWorld.jar myManifest -C build/classes .
	java -jar build/jar/HelloWorld.jar

clean:
	rm -f build