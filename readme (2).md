//  download project
https://github.com/Moustafa1997/hosting-aws.git

for bucket policy s3>>>
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "PublicReadGetObject",
            "Effect": "Allow",
            "Principal": "*",
            "Action": [
                "s3:GetObject"
            ],
            "Resource": [
                "arn:aws:s3:::aboalazm-udagram/*"
            ]
        }
    ]
}
----------------------------------------------------------------------------
project:
----in cmd
aws configure.
  

------------------------------------------------------
in deploy .sh

set -x
set -e

eb init  host  --platform node.js --region us-east-1
eb create --sample host-env
eb use aboalazm-env

eb setenv AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID &&
eb setenv AWS_BUCKET=$AWS_BUCKET &&
eb setenv AWS_DEFAULT_REGION=$AWS_DEFAULT_REGION &&
eb setenv AWS_PROFILE=$AWS_PROFILE &&
eb setenv AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY &&
eb setenv DB_PORT=$DB_PORT &&
eb setenv PORT=$PORT &&
eb setenv JWT_SECRET=$JWT_SECRET &&
eb setenv POSTGRES_DB=$POSTGRES_DB &&
eb setenv POSTGRES_HOST=$POSTGRES_HOST &&
eb setenv POSTGRES_PASSWORD=$POSTGRES_PASSWORD &&
eb setenv POSTGRES_USERNAME=$POSTGRES_USERNAME &&
eb setenv URL=$URL 

eb deploy host-env
--------------------------------------------------


__________________________________________________________________________

 

-------------------------------------------------------------------------
# 3.>>> create .env file under  udagram-api   paste in it


POSTGRES_HOST="localhost"
POSTGRES_DB="postgres"
POSTGRES_USERNAME="postgres"
POSTGRES_PASSWORD="postgres"
DB_PORT=5432
PORT=8080
AWS_ACCESS_KEY_ID=""
AWS_SECRET_ACCESS_KEY=""
AWS_DEFAULT_REGION="us-east-1"
AWS_PROFILE=""
AWS_BUCKET="aboalazm-udagram"
URL=""
JWT_SECRET="hello-from"
-------------------------------------
 
  ------------------------------------------------
eb use udagram-env
eb setenv PORT=3000 DB_PORT=5432 POSTGRES_USERNAME=postgres POSTGRES_PASSWORD=engesraa58 POSTGRES_DB=postgres POSTGRES_HOST=udagram.cpqak3wevy9b.us-east-2.rds.amazonaws.com AWS_ACCESS_KEY_ID=AKIA55YVBSQXA7W33OYM AWS_SECRET_ACCESS_KEY=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 AWS_REGION=us-east-2 AWS_BUCKET=udagram-957284979758-bucket URL=http://udagram-env.eba-uhasppst.us-east-2.elasticbeanstalk.com JWT_SECRET=my-secret
eb deploy udagram-env

 

------------------------------
 
eb setenv PORT=3000 DB_PORT=5432 POSTGRES_USERNAME=postgres POSTGRES_PASSWORD=engesraa58 POSTGRES_DB=postgres POSTGRES_HOST=udagram.cpqak3wevy9b.us-east-2.rds.amazonaws.com AWS_ACCESS_KEY_ID=AKIA55YVBSQXA7W33OYM AWS_SECRET_ACCESS_KEY=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 AWS_REGION=us-east-2 
AWS_BUCKET=udagram-957284979758-bucket URL=http://udagram-env.eba-nt44bg5f.us-east-2.elasticbeanstalk.com/ JWT_SECRET=my-secret
eb deploy 