# feedback to speaker
use too many english terms
explain function base on microservice - what is microservice?
vietnamese noi' ngo.ng eg rất -> gất, rơi vào -> gơi dào, viet function -> diet function

lack of topic's prerequisite from attendant e.g. how much AWS knowledge is required

speaker not having the mindset of a guidance where it is required to lead from simplest


# grokking workshop 191026 note
runtime == execution env e.g. nodejs 8, php 7, etc.
           moi truong thuc thi phan mem

function ~ microservice 

slide url for serverless architecture
https://slides.com/tuanquynet/serverless-on-aws-22/


`api gateway` into many microservice(s)
`TODO` what is api gateway

`TODO` can we call lambda without api gateway?


serverless != no server
    it is an `execution model` on cloud where we only `get charged for resources used to run the code`
    e.g. 
    code stored on S3 storage
    when the api endpoint is requested, the code will be deployed with resource(s) R and executed
    R will be shut down when done
    
cold start and hot start
    cold start = lambda triggered --> run lambda code
        is the lambda's runtime env available?
        yes -> run code aka `hot start`
        no  -> create instance, then run code `cold start`

lambda
event trigger the lambda
api endpoint call a lambda


sample of lambda triggered scenario
    create thumbnail for images in s3
    save a new rows in db
    call a mapped api endpoint
    
CloudWatch used for log/monitor lambda

lambda Framework name Serverless 
    a framework here is to provide CLI which is very handy to deploy lambda with cloud provider eg AWS
    ie a wrapper/simpler-syntax to work with cloud provider 
    ie user has no knowledge about Cloud Formation to work with cloud provider


## when should we use serverless
image thumbnail
video multi-dimension
