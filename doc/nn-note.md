## deploy serverless lambda to aws
```bash
cd /path/to/serverless-demo/
    AWS_ACCESS_KEY_ID=yourid AWS_SECRET_ACCESS_KEY=yoursecret ./.my-tools/devops/deploy-staging.sh
cd -
```

## sample output when run `.my-tools/devops/deploy-staging.sh`
```

╭namgivu@dell-xps-13:~/NN/code/_NN_/serverless-demo3 
╰$ AWS_ACCESS_KEY_ID=AKIA4E5VPNZ5FLR7ODXU AWS_SECRET_ACCESS_KEY=ulsyZHfX3t5xT7SOdrW5/Fd8JMkwNje4RFkKpFd9 ./.my-tools/devops/deploy-staging.sh
Serverless: DOTENV: Loading environment variables from .env:
Serverless:      - MANDRILL_SECRET_KEY
Serverless:      - DB_HOST
Serverless:      - DB_DATABASE
Serverless:      - DB_USER
Serverless:      - DB_PASSWORD
Serverless: Bundling with Webpack...
babel-preset-env: `DEBUG` option

Using targets:
{
  "node": "8.15"
}

Modules transform: commonjs

Using plugins:
Time: 363ms
Built at: 10/26/2019 4:55:55 PM
                   Asset       Size  Chunks                   Chunk Names
    hello-world/index.js   4.52 KiB       0  [emitted]        hello-world/index
hello-world/index.js.map  711 bytes       0  [emitted] [dev]  hello-world/index
Entrypoint hello-world/index = hello-world/index.js hello-world/index.js.map
[0] ./hello-world/index.js 850 bytes {0} [built]
Time: 350ms
Built at: 10/26/2019 4:55:55 PM
                   Asset       Size  Chunks                   Chunk Names
    server-info/index.js   4.88 KiB       0  [emitted]        server-info/index
server-info/index.js.map  742 bytes       0  [emitted] [dev]  server-info/index
Entrypoint server-info/index = server-info/index.js server-info/index.js.map
[0] ./server-info/index.js 1.19 KiB {0} [built]
Time: 591ms
Built at: 10/26/2019 4:55:55 PM
              Asset      Size  Chunks                   Chunk Names
    myfunc/index.js  64.7 KiB       0  [emitted]        myfunc/index
myfunc/index.js.map   4.9 KiB       0  [emitted] [dev]  myfunc/index
Entrypoint myfunc/index = myfunc/index.js myfunc/index.js.map
 [0] ./myfunc/index.js 3.23 KiB {0} [built]
 [1] ./shared/aws.js 15.8 KiB {0} [built]
 [2] external "aws-sdk" 42 bytes {0} [built]
 [3] ./shared/config.js 3.73 KiB {0} [built]
 [4] external "dotenv/config" 42 bytes {0} [built]
 [5] ./shared/logger.js 2.18 KiB {0} [built]
 [6] ./shared/tools.js 35.2 KiB {0} [built]
 [7] external "uuid" 42 bytes {0} [built]
 [8] external "crypto" 42 bytes {0} [built]
 [9] external "node-fetch" 42 bytes {0} [built]
[10] external "abort-controller" 42 bytes {0} [built]
Serverless: WARNING: Could not determine version of module uuid
Serverless: WARNING: Could not determine version of module node-fetch
Serverless: Excluding external modules: aws-sdk@^2.519.0
Serverless: Package lock found - Using locked versions
Serverless: Packing external modules: dotenv@^6.1.0, uuid, node-fetch, abort-controller@^3.0.0
Serverless: WARNING: Could not determine version of module uuid
Serverless: WARNING: Could not determine version of module node-fetch
Serverless: Packaging service...
Serverless: Creating Stack...
Serverless: Checking Stack create progress...
.....
Serverless: Stack create finished...
Serverless: Uploading CloudFormation file to S3...
Serverless: Uploading artifacts...
Serverless: Uploading service hello-world.zip file to S3 (3.39 KB)...
Serverless: Uploading service server-info.zip file to S3 (3.64 KB)...
Serverless: Uploading service myfunc.zip file to S3 (194.77 KB)...
Serverless: Validating template...
Serverless: Updating Stack...
Serverless: Checking Stack update progress...
...................................................
Serverless: Stack update finished...
Service Information
service: serverless-practice-namgivu
stage: staging
region: ap-southeast-1
stack: serverless-practice-namgivu-staging
resources: 17
api keys:
  None
endpoints:
  GET - https://3q9kfsaes2.execute-api.ap-southeast-1.amazonaws.com/staging/api/hello-world
functions:
  hello-world: serverless-practice-namgivu-staging-hello-world
  server-info: serverless-practice-namgivu-staging-server-info
  myfunc: serverless-practice-namgivu-staging-myfunc
layers:
  None
Serverless: Run the "serverless" command to setup monitoring, troubleshooting and testing.
Serverless: DOTENV: Loading environment variables from .env:
Serverless:      - MANDRILL_SECRET_KEY
Serverless:      - DB_HOST
Serverless:      - DB_DATABASE
Serverless:      - DB_USER
Serverless:      - DB_PASSWORD
Serverless: Bundling with Webpack...
Time: 343ms
Built at: 10/26/2019 4:58:36 PM
                   Asset       Size  Chunks                   Chunk Names
    hello-world/index.js   4.52 KiB       0  [emitted]        hello-world/index
hello-world/index.js.map  711 bytes       0  [emitted] [dev]  hello-world/index
Entrypoint hello-world/index = hello-world/index.js hello-world/index.js.map
[0] ./hello-world/index.js 850 bytes {0} [built]
Time: 328ms
Built at: 10/26/2019 4:58:36 PM
                   Asset       Size  Chunks                   Chunk Names
    server-info/index.js   4.88 KiB       0  [emitted]        server-info/index
server-info/index.js.map  742 bytes       0  [emitted] [dev]  server-info/index
Entrypoint server-info/index = server-info/index.js server-info/index.js.map
[0] ./server-info/index.js 1.19 KiB {0} [built]
Time: 486ms
Built at: 10/26/2019 4:58:36 PM
              Asset      Size  Chunks                   Chunk Names
    myfunc/index.js  64.7 KiB       0  [emitted]        myfunc/index
myfunc/index.js.map   4.9 KiB       0  [emitted] [dev]  myfunc/index
Entrypoint myfunc/index = myfunc/index.js myfunc/index.js.map
 [0] ./myfunc/index.js 3.23 KiB {0} [built]
 [1] ./shared/aws.js 15.8 KiB {0} [built]
 [2] external "aws-sdk" 42 bytes {0} [built]
 [3] ./shared/config.js 3.73 KiB {0} [built]
 [4] external "dotenv/config" 42 bytes {0} [built]
 [5] ./shared/logger.js 2.18 KiB {0} [built]
 [6] ./shared/tools.js 35.2 KiB {0} [built]
 [7] external "uuid" 42 bytes {0} [built]
 [8] external "crypto" 42 bytes {0} [built]
 [9] external "node-fetch" 42 bytes {0} [built]
[10] external "abort-controller" 42 bytes {0} [built]
Serverless: WARNING: Could not determine version of module uuid
Serverless: WARNING: Could not determine version of module node-fetch
Serverless: Excluding external modules: aws-sdk@^2.519.0
Serverless: Package lock found - Using locked versions
Serverless: Packing external modules: dotenv@^6.1.0, uuid, node-fetch, abort-controller@^3.0.0
Serverless: WARNING: Could not determine version of module uuid
Serverless: WARNING: Could not determine version of module node-fetch
Serverless: Packaging service...
Serverless: Service files not changed. Skipping deployment...
Service Information
service: serverless-practice-namgivu
stage: staging
region: ap-southeast-1
stack: serverless-practice-namgivu-staging
resources: 17
api keys:
  None
endpoints:
  GET - https://3q9kfsaes2.execute-api.ap-southeast-1.amazonaws.com/staging/api/hello-world
functions:
  hello-world: serverless-practice-namgivu-staging-hello-world
  server-info: serverless-practice-namgivu-staging-server-info
  myfunc: serverless-practice-namgivu-staging-myfunc
layers:
  None
Serverless: Run the "serverless" command to setup monitoring, troubleshooting and testing.

```

quoted important output
> Entrypoint hello-world/index = hello-world/index.js hello-world/index.js.map
> Entrypoint server-info/index = server-info/index.js server-info/index.js.map
> Entrypoint myfunc/index = myfunc/index.js myfunc/index.js.map

> Service Information
  service: serverless-practice-namgivu
  stage: staging
  region: ap-southeast-1
  stack: serverless-practice-namgivu-staging
  resources: 17
  api keys:
    None
  endpoints:
    GET - https://3q9kfsaes2.execute-api.ap-southeast-1.amazonaws.com/staging/api/hello-world
  functions:
    hello-world: serverless-practice-namgivu-staging-hello-world
    server-info: serverless-practice-namgivu-staging-server-info
    myfunc: serverless-practice-namgivu-staging-myfunc
  layers:
    None
  Serverless: Run the "serverless" command to setup monitoring, troubleshooting and testing.
  

