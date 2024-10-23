SPRING BOOT MICRO SERVICES MONOLITH PROJECT

A boiler-plate Monolith implementation of Spring Boots microservices. Including 2 stand alone
microservices (School and Student).

A configuration server containing the configuration of all Microservices entities. To help with 
the management of the entire platform in one place.
- It's Available on port: 8888

An Eureka Discovery Server: Responsible for registering all the individual micro-services. it is available at: 
- http://<ip>:8761

An Application Gateway: An Entrance platform to our microservice suite. It's used to allow communication between
individual micro-service in the suite. We can add a few functionalities here especially if its shared by the 
entire microservice suite. Example is Authentication. 

** Look forward to my update on that in the nearest future.
- It's available on link: http://<ip>:8222

A School microservice, with a few controllers. Available at:
- http://<ip>:8070/api/v1/schools
With Possibility for GET all schools, and POST (create) a school method.

Below is the expected object to send to create a School
```aidl
{
    "name": "school 3",
    "email": "{{$randomEmail}}"
}
```
An extra method that demonstrate School microservice interacting with Students microservice below:

"http://localhost:8222/api/v1/schools/with-students/2".


A Student microservice, with a few controllers. Available at:
- http://<ip>:8090/api/v1/students
  With Possibility for GET all students, and POST (create) a student method.


Below is the expected object to send to create a School
```aidl
{
    "firstName": "{{$randomFirstName}}",
    "lastName": "{{$randomLastName}}",
    "email": "{{$randomEmail}}",
    "schoolId": 2
}
```

Monitoring is implemented with ZIPLIN and a docker-compose file is provided to help you get started 
with Postgresql and PgAdmin 4.
ZIPLIN: http://localhost:9411/zipkin
PgAdmin: http://localhost:5050/browser/

To Use codebase:
- Add each microservice as a module into a suite of services and run the in the following order.
- ConfigurationService
- GatewayService
- DiscoveryService
- SchoolService and StudentService.

Microservices monorepo project
by @hiroyalty
