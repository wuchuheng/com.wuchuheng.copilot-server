<h1 align="center">Copilot-server</h1>

## Description
This is the copilot server to enhance my blog: [wuchuheng.com](https://wuchuheng.com) experience.
so that to provide a better development experience for myself and others. for example. 
- [x] Timely notification to remind me something was done, like: 
  - [x] Execute the cmd `do_some_thing | n` to remind me to do something after the command is executed.

## Installation

Download the binary from the [release page](https://github.com/wuchuheng/com.wuchuheng.copilog-server/releases).

## Usage

To run the copilot as a daemon.
and the server will listen on the port 3000 by default.
When you what to send a notification to the server, you can use the `curl` command to send a request to the server.
```bash
curl -X POST \
-H "Content-Type: application/json" \
-d '{"query":"mutation createNotification($input: NotificationInput!){ createNotification(input: $input) { id title body } }","variables":{"input":{"title":"title-hdddello","body":"1"}}}' \
http://127.0.0.1:3000/graphql

```





  


