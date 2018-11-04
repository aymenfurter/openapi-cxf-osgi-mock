# CXF Endpoint OSGI Example

### Introduction

Simple Mock Endpoint with Camel CXF (OSGI)

### Build

You will need to compile the example first:

	mvn install

### Run
To run the example on Apache Karaf or Talend ESB Open Source Version >7.1.1

#### Step 1: launch the server
	karaf / karaf.bat

#### Step 2: Add features required	
	feature:install cxf-jaxrs
	feature:install cxf-rs-description-openapi-v3
	feature:install cxf-jackson
	feature:install cxf-rs-description-swagger2
	feature:install camel-jackson


Service should be listed here after installation: http://localhost:8040/services
You can open OpenAPI Definition: http://localhost:8040/services/petstore/openapi.yaml
(There is currently an issue with getting the OpenAPI Definition on runtime.