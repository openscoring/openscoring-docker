Openscoring application for the Docker distributed applications platform

Openscoring provides [REST API] (https://github.com/jpmml/openscoring) for publishing and evaluating predictive models:

* Model deployment and undeployment
* Model evaluation in single prediction, batch prediction and CSV prediction modes
* Model metrics

# Installation #

Prerequisites:

* Docker 1.5 or newer

GitHub repository [jpmml/openscoring-docker] (https://github.com/jpmml/openscoring-docker) contains a `Dockerfile` for Openscoring command-line server application.

Building the `latest` Openscoring application image from the `HEAD` revision:

```
sudo docker build -t jpmml/openscoring:latest github.com/jpmml/openscoring-docker
```

Additionally, this GitHub repository is tracked by Docker Hub repository [jpmml/openscoring] (https://registry.hub.docker.com/u/jpmml/openscoring/) using the "Automated Builds" mechanism.

Pulling a stable Openscoring application image:

```
sudo docker pull jpmml/openscoring:1.2.2
```

# Usage #

### Interactive mode ###

Running the image in the `host` networking mode:

```
sudo docker run --net="host" jpmml/openscoring:latest
```

The container shares host's network stack. It is possible to use privileged HTTP methods `PUT` and `DELETE` for deploying and undeploying models, respectively.

### Passive mode ###

Running the image in the `bridge` (default) networking mode:

```
sudo docker run --net="bridge" -p 8080:8080 -v /path/to/pmml:/openscoring/pmml jpmml/openscoring:latest --model-dir /openscoring/pmml
```

The container uses Docker's default network setup, which is separate from host's network stack. It is impossible to use privileged HTTP methods. The only option for deploying and undeploying models is via the PMML auto-deployment directory `/openscoring/pmml`. This directory is mapped to host's filesystem directory `/path/to/pmml` using the *data volume* mechanism.

# License #

Openscoring is dual-licensed under the [GNU Affero General Public License (AGPL) version 3.0] (http://www.gnu.org/licenses/agpl-3.0.html) and a commercial license.

# Additional information #

Please contact [info@openscoring.io] (mailto:info@openscoring.io)