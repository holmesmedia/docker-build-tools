# Build Tools

This includes a collection of the following tools, run in Ubuntu 16.04

* Apache Ant
* Nodejs 
* Gulp
* Grunt
* Bower
* Yarn
* Ruby gems
* Sass

**Note**
Using ffi 1.9.6

## Run

An example to run a build that uses a `Gemfile`, `Bower`, `yarn` and `ant`.

```
docker run \
    --rm \
    -v "$(pwd)":/src:rw \
    pavlakis/build-tools sh -c "bundle install;yarn;bower install --allow-root;ant build"
```
