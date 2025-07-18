# AEM Learning Path

## 🧱 PART 1: Core AEM Foundation

### AEM Architecture

-   Author, Publish, Dispatcher model
-   AEM as a CMS vs DAM
-   JCR (Java Content Repository)
-   AEM runtimes (Classic UI, Touch UI)
-   Granite, Sling, and OSGi integration

### AEM Sling Resolution

-   Sling Resource Resolver
-   Resource mapping and URL resolution
-   Request processing with resource types and selectors
-   sling:resourceType concept

### AEM Authoring

-   Page and template creation
-   Editable templates vs static templates
-   Dialogs, Design Dialogs, Multifield, Granite UI
-   Touch UI authoring tools
-   Content authoring best practices

### AEM Project Structure

-   Maven multi-module setup
-   Core, UI.apps, UI.content, dispatcher modules
-   Filter.xml and content packages
-   AEM archetype project generation

---

## 🎨 PART 2: AEM Front-End Development

### a) Front-End Basics

#### HTML, CSS, JS & jQuery

-   Semantic HTML
-   Responsive layout (Flexbox, Grid)
-   DOM manipulation using JS/jQuery
-   AEM-specific jQuery libraries

#### Less / Sass CSS Framework

-   Variables, nesting, mixins
-   Preprocessing and compilation
-   Folder structure for maintainable CSS

#### AEM ClientLibs

-   clientlibs-folder setup
-   Categories and dependencies
-   js.txt and css.txt files
-   Embed vs Include vs Depends
-   Loading and minification

---

### b) AEM Templating

#### AEM HTL Templating Language

-   Expression language syntax
-   Data-sly-use, data-sly-test, data-sly-list
-   Calling Java classes (WCMUsePojo, Sling Models)
-   HTL best practices

---

### c) Front-End Personalization & SPA

#### AEM Context Hub & Personalization

-   Context Hub configuration
-   Segmentation rules and targeting
-   Personalization in components

#### Angular / React Framework / Experience

-   Basics of React / Angular setup
-   JSX (for React), TypeScript (for Angular)
-   Creating components and state management

#### Angular / React State Management

-   React: useState, useEffect, Context API, Redux
-   Angular: Services, RxJS, NgRx basics

#### AEM SPA Editor

-   Editable templates for SPA
-   SPA SDK integration
-   Sling Model JSON exporter
-   Connecting AEM components with front-end SPA

---

## 🔙 PART 3: AEM Back-End Development

### a) Back-End Development

#### Maven & Dependency Management

-   Parent/child POM structure
-   Adding dependencies for AEM APIs
-   Embedding and shading libraries

#### AEM Custom Component Creation

-   Java classes using Sling Models or WCMUsePojo
-   Component dialogs and configurations
-   Backend logic for dynamic components

#### Sling Servlets

-   @SlingServlet vs resourceTypes vs paths
-   GET and POST methods handling
-   Returning JSON data

#### OSGi Services

-   @Component, @Service annotations
-   OSGi Configuration with annotations or config files
-   Service references and dependency injection

#### Workflow Development / Administration

-   Creating and managing workflows
-   Custom workflow steps
-   Launcher and models
-   Workflow console and runtime debugging

#### Content Model Creation

-   Content Fragments (structured/unstructured)
-   Models using Content Fragment Models Editor
-   Consuming CFs in GraphQL or via REST APIs

---

### b) Java & Microservices

#### Java Basics & OOP

-   Classes, interfaces, inheritance, polymorphism
-   Collections, Exception handling, I/O
-   Basic JDBC, REST calls, multithreading

#### Microservices Architecture / Experience

-   REST APIs design (GET, POST, PUT, DELETE)
-   JSON serialization/deserialization (Jackson, Gson)
-   API documentation (Swagger/OpenAPI)
-   Authentication/Authorization (JWT, OAuth)
-   CI/CD basics and containerization (Docker)

#### Integration of Java Microservices with AEM

-   Consuming external services in AEM (Apache HTTP Client / Feign)
-   Scheduler jobs & background services
-   Error handling and retries
-   Secure connection (HTTPS, authentication)
