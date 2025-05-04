build_:
	./gradlew jar

run:
	java -jar build/libs/java-ssl-test-v1.0.15.jar -showcerts  -hiderejects www.google.de
