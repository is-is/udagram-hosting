eb init  udagram  --platform node.js --region us-east-2
eb create --sample udagram-env
eb use udagram-env
eb setenv PORT=3000 DB_PORT=5432 POSTGRES_USERNAME=postgres POSTGRES_PASSWORD=engesraa58 POSTGRES_DB=postgres POSTGRES_HOST=udagram.cpqak3wevy9b.us-east-2.rds.amazonaws.com AWS_ACCESS_KEY_ID=AKIA55YVBSQXA7W33OYM AWS_SECRET_ACCESS_KEY=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 AWS_REGION=us-east-2 AWS_BUCKET=udagram-957284979758-bucket URL=http://udagram-env.eba-nt44bg5f.us-east-2.elasticbeanstalk.com/ JWT_SECRET=my-secret


eb deploy 