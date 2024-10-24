# Django Ninja + DuckDB + Kafka Project

## Overview

This project serves as a showcase for integrating **modern and efficient technologies** into a Django-based application. It demonstrates the use of **Django Ninja** for building fast, type-safe APIs, **DuckDB** as a high-performance in-process database for analytical workloads, and **Kafka** for real-time messaging using the **pub/sub pattern**. Additionally, the project integrates **automatic CI/CD** to run linting and tests upon every push, ensuring code quality and stability.

## Objectives

- **Showcase the following technologies**:
  - **Django Ninja**: A lightweight framework for building APIs with type annotations, known for its performance and simplicity.
  - **DuckDB**: A powerful, in-process OLAP database that excels at analytical queries.
  - **Kafka**: A distributed event streaming platform for real-time data processing.
  - **Pub/Sub Pattern**: A messaging architecture where publishers send messages without knowledge of subscribers, ideal for decoupling components.
  - **Auto CI/CD**: Automated workflows for linting and testing on every push to maintain code quality.

## Technology Highlights

### Django Ninja vs. Django REST Framework (DRF)

When building APIs in Django, developers often choose between **Django Ninja** and **Django REST Framework (DRF)**. Here’s a quick summary to help you decide:

| **Feature**          | **Django Ninja**                                                                                 | **Django REST Framework (DRF)**                                                    |
|----------------------|-------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------|
| **Type Safety**      | Uses Python type annotations, providing better support for type checking with tools like `mypy`. | Supports type hints but is not centered around them.                               |
| **Validation**       | Uses **Pydantic** for data validation and serialization, which is known for its speed and simplicity. | Uses DRF serializers, which are more feature-rich but can be more verbose.         |
| **Performance**      | Generally faster due to its lightweight nature and simpler request parsing using Pydantic.       | More features often mean more overhead, leading to slightly slower response times. |
| **Async Support**    | Better support for async views, making it ideal for high concurrency and non-blocking I/O operations. | Has async support, but it’s less streamlined compared to Django Ninja.             |
| **Automatic Documentation** | Generates OpenAPI (Swagger) documentation out-of-the-box, similar to FastAPI.                | Requires third-party libraries like `drf-yasg` or `drf-spectacular` for OpenAPI docs. |
| **Ease of Use**      | Minimal boilerplate, allowing for more expressive and concise code. Ideal for those who prefer simplicity. | More verbose but offers a richer ecosystem and broader third-party integration.    |

### Why Choose Django Ninja?

- **Type Safety and FastAPI-like Design**: Leverage Python's type annotations and get better code completion and validation.
- **Better Performance**: Faster API responses due to lighter request parsing and use of Pydantic.
- **Automatic Documentation**: Built-in OpenAPI documentation that is easy to use and keeps your API documentation up to date automatically.

### Why choose Django DRF
- **Feature-rich framework**
- **Built-in support for:** complex authentication schemes, permissions, serializers, and broad ecosystem integration (such as third-party libraries for pagination, filters, and other features)

### DuckDB: A New Generation OLAP Database

- **In-Process Database**: DuckDB runs within your application's process, just like SQLite, but is optimized for **analytical queries** rather than transactional ones.
- **Columnar Storage**: DuckDB's columnar data storage is ideal for **analytical workloads** where you need to process large amounts of data.
- **Integration with Cloud Storage**: DuckDB can query data directly from cloud storage like Amazon S3 or Google Cloud Storage, enabling you to perform **real-time analytics** on external data sources.
- **Use Case**: Ideal for scenarios where you need fast, in-memory analytics directly within a Python application without needing a separate database server.

### Kafka and Pub/Sub Pattern

- **Event Streaming Platform**: Kafka allows real-time streaming of data between different services, making it perfect for **event-driven architectures**.
- **Pub/Sub Pattern**: This design allows decoupling of components, where publishers send messages to Kafka topics and consumers subscribe to those topics. This pattern is useful for:
  - Real-time data processing.
  - Asynchronous task execution.
  - Decoupling microservices and ensuring they can scale independently.
- **Integration with Django Ninja**: Use Kafka to handle background tasks or real-time data updates, with Django Ninja serving as the API layer for sending and receiving messages.

## Getting Started

### Prerequisites

- **Docker**: Used for containerizing the application and running Kafka.
- **Python 3.10+**: Required for Django Ninja and DuckDB.
- **Kafka**: Can be run locally via Docker or using a cloud-hosted Kafka service.

### Setup Instructions

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/django-ninja-duckdb-kafka.git
   cd django-ninja-duckdb-kafka
   ```

2. **Start the services**
    ```bash 
    docker-compose up
    ```