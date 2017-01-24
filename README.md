![AyeAye](https://github.com/shippableSamples/saving-ci-artifacts-in-a-docker-image/blob/master/public/resources/images/captain.png)

# Continuous Integration for a Node JS application with Custom Docker Image
[![Run Status](https://api.shippable.com/projects/5886d1fc11c45a1000afd38b/badge?branch=master)](https://app.shippable.com/projects/5886d1fc11c45a1000afd38b)

A simple Node JS application that is using a custom built Ubuntu 16.04 build image 
using Docker. Upon building it, the newly built image is booted, the repo cloned
inside it and then CI tests with mocha and istanbul and executed. If these tests
pass, the custom build image is then pushed to Docker Hub as an immutable image.
We also create an artifact during the post_ci step which will be saved as we are 
re-tagging the pre_ci image in post_ci section so that the state of ci is persistend


## Run CI for this repo on Shippable
* Fork this repo into your local repo
* Login into the [Continuous Integration Service](wwww.shippable.com) 
* Create an [integration](http://docs.shippable.com/integrations/imageRegistries/dockerHub/) on shippable to your docker hub
* All CI configuration is in `shippable.yml`
* Follow these [CI Setup Instructions](http://docs.shippable.com/ci/runFirstBuild/) if you have never used Shippable CI Service
* Update the integrationName in the integration.hub section if you used something other than `shipDH`
* Change the DOCKER_REPO and DOCKER_ACC to point to your repo and docker account
* You should be able to run a manual build or webhook build on commit

## CI Reports on Shippable

### CI Integration View
![CI Integration View](https://github.com/shippableSamples/saving-ci-artifacts-in-a-docker-image/blob/master/public/resources/images/integration.jpg)

### CI Console Output
![CI Console Output](https://github.com/shippableSamples/saving-ci-artifacts-in-a-docker-image/blob/master/public/resources/images/console.jpg)
