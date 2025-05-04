build_:
	./gradlew clean jar

run:
	java -jar build/libs/java-ssl-test-*.jar -showcerts  -hiderejects www.google.de
