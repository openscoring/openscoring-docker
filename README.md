Openscoring-Docker
==================

Openscoring application for the Docker distributed applications platform.

# Prerequisites #

* Docker 1.5 or newer

# Installation #

Clone the repository:

```
git clone https://github.com/openscoring/openscoring-docker.git
```

Enter the project root directory and edit the Openscoring application configuration file `application.conf` as necessary.

Build the image:

```
docker build -t openscoring/openscoring:latest .
```

# Usage #

Run the image in "host" mode:

```
docker run --net="host" openscoring/openscoring:latest
```

There should be a Model REST API endpoint ready at [http://localhost:8080/openscoring/model](http://localhost:8080/openscoring/model).

# License #

Openscoring-Docker is licensed under the terms and conditions of the [GNU Affero General Public License, Version 3.0](https://www.gnu.org/licenses/agpl-3.0.html).

# Additional information #

Openscoring-Docker is developed and maintained by Openscoring Ltd, Estonia.

Interested in using [Java PMML API](https://github.com/jpmml) or [Openscoring REST API](https://github.com/openscoring) software in your company? Please contact [info@openscoring.io](mailto:info@openscoring.io)
