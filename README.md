# Messenger Platform Sample

This is a sample project showcasing the Messenger Platform. You can go through the [walk-through](https://developers.facebook.com/docs/messenger-platform/quickstart) to understand this code in more detail. The [Complete Guide](https://developers.facebook.com/docs/messenger-platform/implementation) goes deeper into the features available.

Visit the [dev site](https://developers.facebook.com/docs/messenger-platform/) to find out more details about the Messenger Platform.

# What i did

I added a Dockerfile to automate the launch of the bot, in a Docker container.
I used [ngrok](https://ngrok.com/) to simulate create an https tunnel and still have a webhook while working on my machine.
I redirected the docker port to the local one used by ngork :

```bash
  ./ngrok http 1234
  docker build -t test_bot:latest .
  docker run -d -p 1234:5000 -v ${PWD}/node:/home/www test_bot:latest
```
