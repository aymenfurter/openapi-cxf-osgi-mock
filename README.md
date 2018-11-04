# CXF Endpoint OSGI Example

### Introduction

Simple Mock Endpoint with Camel CXF (OSGI)

### Build

You will need to compile the example first:

	mvn install

### Run
To run the example on Apache Karaf or Talend ESB Open Source Version >7.1.1

#### Step 1: Clone & Build TOS Base Image
	$ git clone https://github.com/aymenfurter/talend-docker.git
	# Download TOS 7.1.1 and put it as 'tos.zip' into the talend-docker directory.
	$ docker build . -t tos-beta
After building the TOS 7.1.1 Base Image, you now can build and start the TOS 7.1.1 Runtime like this:

	$ git clone https://github.com/aymenfurter/openapi-cxf-osgi-mock
	$ mvn clean package -DskipTests && docker build . -t intgr1 && docker run -p 8040:8040 -a stdin -a stdout -it intgr1

#### Step 2: Add features required	
	feature:install cxf-jaxrs
	feature:install cxf-rs-description-openapi-v3
	feature:install cxf-jackson
	feature:install cxf-rs-description-swagger2
	feature:install camel-jackson

Service should then be listed here after installation: http://localhost:8040/services
You can open OpenAPI Definition: http://localhost:8040/services/petstore/openapi.yaml
(There is currently an issue with getting the OpenAPI Definition on runtime.
