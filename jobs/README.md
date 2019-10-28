# Docker, Job DSL and Jenkins Challenge.
## Background

This Docker-Compose file provisions, build and manage a Jenkins container.

[Docker](https://www.docker.com/) is used to build and manage containers.

## Getting Started

Inside of this repository you can see a file is call `docker-compose.yml` that contains the configuration for the Jenkins container.

To use the `docker-compose.yml` file, you will need to have done the following:

  1. Download and Install [Docker](https://www.docker.com/)
  2. Open a shell prompt (Terminal app on a Mac) and run `docker-compose.yml` file typing `docker-compose up` on the shell.

  Once all of that is done, the file should run without any other action.

  ## Process

  A Jenkins container gets fired up with packages specified in plugins.txt file. A predefined job gets mounted as a volume (Seed-job).

  Go to Jenkins Url there is: localhost:80

  And running the Seed-job, the Seed-job fetches job DSL from the public repository and generates another job. The generated job start automatically each 2 minutes because there is a trigger defined by default for this on `generate_job.groovy` file.

  ## Author Information

  Created in 2019 by [David Oliveros](https://github.com/Daopz/)

