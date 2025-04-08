# K8s Debug Tools

A comprehensive debugging environment for Kubernetes clusters that combines GUI and CLI tools in a single container. Built on top of Webtop with KDE desktop, this image provides a powerful set of tools for DevOps engineers and developers.

## Features

- Web-based GUI access (HTTP/HTTPS)
- Network troubleshooting tools (ping, curl, tcpdump, iperf3, etc.)
- Database clients (PostgreSQL, MySQL, Redis, InfluxDB, MongoDB)
- Apache Kafka tools (v3.8.1)
- Java development environment (OpenJDK 11)
- Memory-backed shared storage for better performance

## Resource Requirements

- CPU: 2 cores
- Memory: 4GB
- Ports: 3000 (HTTP), 3001 (HTTPS)

## Usage

Deploy the debug pod using the provided YAML:

```bash
kubectl apply -f debug-pod.yaml
```

Access the web interface through the exposed ports (3000/3001).

## Author

Created by [Norel Milihov](https://github.com/norelnorel3)

## License

MIT License

Copyright (c) 2024 Norel Milihov

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.