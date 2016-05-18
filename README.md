# FizzbuzzClient

Simple client to consume the FizzBuzz api.

# Usage

You need to have a `User` account created on the api side. Then you will need
that user's `authentication_token`. (ex. `6xbCQm1TzxXSaTkGfi1X`)

List numbers
```
./fizzbuzz_client list -t 6xbCQm1TzxXSaTkGfi1X --page 2 --max 100 --page-size 20

["Fizz",22,23,"Fizz","Buzz",26,"Fizz",28,29,"Fizz",31,32,"Fizz",34,"Buzz","Fizz",37,38,"Fizz","Buzz"]
```

Favorite a number
```
./fizzbuzz_client favorite -t 6xbCQm1TzxXSaTkGfi1X --number 5

{"id":2,"favorites":["1","2","5","10"],"created_at":"2016-05-17T20:23:06.377Z","updated_at":"2016-05-18T06:14:01.432Z","email":"cezar@mixandgo.com","authentication_token":"6xbCQm1TzxXSaTkGfi1X"}
```
