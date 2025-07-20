# General Information:

0. AEM : Adobe Experience Manager
1. Content type allowed in AEM : Text, JSON, Images, PDF, PPT
2. AEM has folder like structure.  
   e.g. Site > Languages > products > details Exception

3. CRXDE : Content Repository eXtreme Development Environment.

```
- CRXDE is a JCR (Java Content Repository) interface.
- JCR is a file system, which contains both actual code and properties file
- AEM uses Apache Jackrabbit Oak, a hierarchical, node-based "NoSQL" content repository that underpins AEM.
  - It's a web/desktop-based tool used for directly interacting with the JCR (Java Content Repository).
  - Two main versions: Lite (built-in, web-based) and Full IDE (Eclipse-based desktop IDE, now largely deprecated)
  - CRXDE Lite is accessible in a browser via: http://localhost:4502/crx/de - (Replace localhost:4502 with your AEM instance host and port)
  - It allows developers to:
    - Browse and edit the JCR repository structure (/apps, /content, etc.)
    - Create, delete, or modify nodes and properties
    - Upload/download files like .jsp, .xml, .html, .json, etc.
    - Manage permissions on content nodes
    - View and edit component definitions and configurations
    - Debug issues in the repository directly (carefully)
```

4. OSGI Container :

```
- OSGi is a Java framework for developing and deploying modular software programs and libraries. It allows applications to be broken into reusable, dynamic modules (called bundles), which can be independently started, stopped, updated, or removed at runtime.

- AEM Architecture:
    - AEM (Application Layer): The Adobe Experience Manager application itself; implemented as OSGi bundles running within Felix.
    - Apache Sling (Web Application Framework): Runs on Felix; maps HTTP requests to JCR content and handles rendering.
    - Apache Jackrabbit Oak (JCR Repository / Storage Layer): Stores AEM's content and data. Felix provides its runtime environment.
    - Apache Felix (OSGi Java Container): The foundational runtime environment enabling modularity (install, start, stop, update bundles) without restarts.
```

5. AEM Templates, Components, Authoring

-   AEM contains a lot of templates and options to select from like Container, Progress bar, Tabs, Accordian,Text Box, Praagraph etc
-   AEM Author Environment (CURD Page) : Changes can be done till this. After Authoring replication happens and Page is went to Publisher
-   AEM Publish Environment : From this environment, page goes to Apache Web server and then end user

6.
