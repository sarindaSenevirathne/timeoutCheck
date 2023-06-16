import ballerina/http;
import ballerina/log;
import ballerina/lang.runtime;


# A service representing a network-accessible API
# bound to port `9090`.
listener http:Listener helloWorldEP = new(9090,{
    timeout: 130
});

service / on helloWorldEP {

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function get greeting(string name) returns string|error {
       runtime:sleep(60); 
       log:printInfo("Waited for 60 seconds");
       runtime:sleep(60); 
       log:printInfo("Waited for 120 seconds");


       return "Hello, " + name;
    }
}
