eb init  udagram  --platform node.js --region us-east-2
eb use udagram-env
eb setenv PORT=$PORT DB_PORT=$DB_PORT POSTGRES_USERNAME=$POSTGRES_USERNAME POSTGRES_PASSWORD=$POSTGRES_PASSWORD POSTGRES_DB=$POSTGRES_DB POSTGRES_HOST=$POSTGRES_HOST AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY AWS_DEFAULT_REGION=$AWS_DEFAULT_REGION AWS_BUCKET=$AWS_BUCKET URL=$URL JWT_SECRET=$JWT_SECRET
eb deploy 
