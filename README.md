Openscoring-Docker
==================

Openscoring application for the Docker distributed applications platform

# Prerequisites #

* Docker 1.5 or newer

# Installation #

Building the `latest` Openscoring application image from the `HEAD` revision:

```
sudo docker build -t openscoring/openscoring:latest .
```

# Usage #

### Interactive mode ###

Running the image in the `host` networking mode:

```
sudo docker run --net="host" openscoring/openscoring:latest
```

The container shares host's network stack.

### Passive mode ###

Running the image in the `bridge` (default) networking mode:

```
sudo docker run --net="bridge" -p 8080:8080 openscoring/openscoring:latest
```

The container uses Docker's default network setup, which is separate from host's network stack.

# License #

Openscoring-Docker is licensed under the terms and conditions of the [GNU Affero General Public License, Version 3.0](https://www.gnu.org/licenses/agpl-3.0.html).

# Additional information #

Openscoring-Docker is developed and maintained by Openscoring Ltd, Estonia.

Interested in using [Java PMML API](https://github.com/jpmml) or [Openscoring REST API](https://github.com/openscoring) software in your company? Please contact [info@openscoring.io](mailto:info@openscoring.io)
