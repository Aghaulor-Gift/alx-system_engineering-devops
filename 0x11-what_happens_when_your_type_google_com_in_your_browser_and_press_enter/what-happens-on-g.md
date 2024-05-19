# What Happens When You Type https://www.google.com and Press Enter?
#![Web Infrastructure](https://miro.medium.com/v2/resize:fit:4800/format:webp/1*8fYWPF2cy8HwTurc_2UF3w.jpeg)

## Overview

In the age of technology, many people use Google or other search engines with different browsers to satisfy their curiosity or learn new things from the internet. But have you ever considered what happens behind the scenes of a search engine? Well, here is a simple explanation.

Assuming you are curious about finding the best workout routine to stay fit or learning how to do something new yourself, you might use a mobile device, laptop, desktop, etc., which are referred to as ‘clients’. You type a URL (Uniform Resource Locator) like https://www.google.com/ and hit enter. In just a few seconds, you find what you were searching for or something close with a couple more searches. However, that is just on the surface. What happens behind the scenes involves a complex series of steps with various technologies and protocols working together to deliver the webpage.

The moment you hit enter, there is a DNS request, let’s talk about this one:

### DNS request:

As soon as you hit Enter, your browser initiates a Domain Name System (DNS) request to translate the human-readable URL (www.google.com) into an IP address. This request is sent to a DNS resolver, which searches through a hierarchical system of DNS servers to find the corresponding IP address associated with the domain name.

### TCP/IP:

Once the IP address is resolved, your browser establishes a Transmission Control Protocol (TCP) connection with the server hosting the website using the Internet Protocol (IP). The request reaches the server IP on port HTTPS 443, ensuring a secure connection using the HTTPS protocol. TCP ensures reliable, ordered, and error-checked data delivery between devices over a network.

### Firewall:

Before the connection is established, it may pass through a firewall, a security measure that monitors and controls incoming and outgoing network traffic based on predetermined security rules. The firewall ensures that only authorized connections are allowed, protecting the network from unauthorized access or malicious activities. The request is passing through the firewall that accepts traffic on port TCP/443.

### HTTPS/SSL:

The traffic is encrypted using a HTTPS/SSL certificate. If the website uses HTTPS (Hypertext Transfer Protocol Secure), an encrypted communication protocol, your browser and the server negotiate a secure connection using Secure Sockets Layer (SSL) or Transport Layer Security (TLS) protocols. This encryption ensures that the data exchanged between your browser and the server remains private and secure, protecting it from eavesdropping or tampering.

### Load-Balancer:

In the case of large-scale websites like Google, incoming requests are often distributed across multiple servers to optimise performance and ensure high availability. A load balancer sits between the client (your browser) and the server farm, distributing incoming requests evenly among the servers based on various factors such as server load, geographic location, or server health.

### Web Server:

Once the connection is established and encrypted, your browser sends an HTTP request to the web server identified by the IP address obtained earlier. The web server (in this case, Google’s server) receives the request and processes it, fetching the requested webpage along with any associated resources such as HTML, CSS, JavaScript files, and images.

### Application Server:

In some cases, especially for dynamic web applications, the web server might communicate with an application server to generate dynamic content or perform specific tasks requested by the client. This could involve processing form submissions, retrieving data from a database, or executing server-side scripts.

### Database:

If the requested webpage requires data from a database, the application server interacts with the database server to retrieve the necessary information. This could include user account details, search results, product listings, or any other dynamic content stored in the database.

Finally, once all the requested resources are gathered, the web server sends an HTTP response back to your browser, which then renders the webpage, displaying the familiar Google search interface for you to enter your query and explore the vast expanse of the internet.
