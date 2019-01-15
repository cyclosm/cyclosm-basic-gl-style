CyclOSM
=======

This is a Mapbox GL basemap style using the vector tile schema of
[OpenMapTiles](https://github.com/openmaptiles/openmaptiles), with cycling in
mind.

It is based on the [Klokantech basic GL
style](https://github.com/openmaptiles/klokantech-basic-gl-style). Icons are
taken from [OSM Bright GL
style](https://github.com/openmaptiles/osm-bright-gl-style).

**Note:** This is currently a Work In Progress and therefore requires some
OpenMapTiles schema updata to have a full render. An up to date OpenMapTiles
branch is available
[here](https://github.com/Phyks/openmaptiles/tree/cyclosm). PRs will be
systematically submitted to OpenMapTiles for each new addition.


## Demo

A demo with tiles generated for
[Ile-de-France](https://en.wikipedia.org/wiki/%C3%8Ele-de-France) area is
available
[here](https://phyks.github.io/cyclosm-basic-gl-style/examples/openlayers.html)
(using OpenLayers) or
[here](https://phyks.github.io/cyclosm-basic-gl-style/examples/mapbox.html)
(using Mapbox GL JS).


## Use the style

You should update the `style.json` file and replace

* `{{ TILE_URL }}` with the URL of your OpenMapTiles
provider.
* `{{ SPRITE_URL }}` with the URL of the built sprites (see below).
* `{{ GLYPHS_URL }}` with an URL serving the fonts.

You can have a look at the [`examples`](examples/) folder for usage examples
with [OpenLayers](http://openlayers.org/) or [Mapbox GL
JS](https://www.mapbox.com/mapbox-gl-js/api/) with tiles generated for
[Ile-de-France](https://en.wikipedia.org/wiki/%C3%8Ele-de-France) area.

## Build the sprites

To use this style, you should build sprites from the icons in the `icons/`
folder.

This requires `nodejs <= 8.x` and `mapnik 3.0.x`. On Ubuntu, you can `apt-get
install libmapnik-dev` and use [this Node v8.x
repo](https://github.com/nodesource/distributions/blob/master/README.md#installation-instructions).

_Note:_ If you have a higher version of Node, you will have to [install
`mapnik` from
source](https://github.com/mapnik/mapnik/blob/master/INSTALL.md). This is due
to [`node-mapnik`](https://github.com/mapnik/node-mapnik) being required to
build the sprites. `node-mapnik@3.x` requires NodeJS version 8 or lower and
`mapnik 3.0.x` and `node-mapnik@4.X` is compatible with higher versions of
NodeJS but requires a Git version of `mapnik`.

Then, you can install the required JS dependencies with

```
$ npm install
```

and use `./scripts/build.sh` to build the sprites. Everytime you update the
icons, you should run `./scripts/build.sh` again, to rebuild the sprites.

_Note:_ If you get "Error: libmapnik.so.4.0: cannot open shared object file:
No such file or directory" when running `build.sh` script, try to prefix it
with
[`LD_LIBRARY_PATH`](http://tldp.org/HOWTO/Program-Library-HOWTO/shared-libraries.html).
For instance, `LD_LIBRARY_PATH=/usr/local/lib ./scripts/build.sh`.



## Edit the Style

Use the [Maputnik CLI](http://openmaptiles.org/docs/style/maputnik/) to edit and develop the style.
After you've started Maputnik open the editor on `localhost:8000`.

```
$ maputnik --watch --file style.json
```
