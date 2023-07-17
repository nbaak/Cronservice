# Crontab Service
A Cron Service that can query other sites via curl.

## Setup
Inside the crontab.txt file, specify the cron jobs you want to run, including the curl commands to query other sites. For example:

    */5 * * * * curl http://example.com
    */15 * * * * curl http://example.org
    
The above example defines two cron jobs. The first job will run curl http://example.com every 5 minutes, and the second job will run curl http://example.org every 15 minutes.

Start the crontab service using Docker Compose:

```bash
docker-compose up -d
```

The -d flag tells Docker Compose to run the containers in detached mode, allowing them to continue running in the background.

## Why a Crontab Service
When running services like Nextcloud, it's often necessary to have a cron service that can regularly execute the cron.php script. The cron service can be set up within the Nextcloud container or on the host system. However, running each service as an isolated service in Docker makes maintenance easier.

By setting up this crontab service, you can define your cron jobs in the crontab.txt file and use curl to query other sites at specified intervals. The service will handle the execution of these cron jobs, providing an isolated and manageable environment.

Feel free to customize the crontab.txt file according to your specific needs and add additional cron jobs as necessary.