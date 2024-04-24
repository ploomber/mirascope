# Runnable examples

This document explains how to get runnable examples in mirascope.

## Deploying

Ensure you have Ploomber Cloud installed:

```sh
pip install ploomber-cloud
```

Move to `jupyterlab-server`, and initialize your project as a docker project (only needed the first time):

```sh
cd jupyterlab-server/
ploomber-cloud key YOURKEY
ploomber-cloud init
```

Commit the repository to ensure the `ploomber-cloud.json` is included.

Now deploy:

```sh
ploomber-cloud deploy
```

## Configuring mkdocs-thebe

Ensure your environment is updated to include `mkdocs-thebe`:

```sh
poetry show mkdocs-thebe
```

You should see:

```sh
name         : mkdocs-thebe 
 version      : 0.1.0        
 description  :
```

If not, re-install the dependencies:

```sh
poetry install --with dev
```

In the `mkdocs.yml` for your docs, you should see `mkdocs-thebe` under plugins:

```
plugins:
    mkdocs-thebe:
        # endpoint to the server that manages Python processes
        baseUrl: "https://endpoint.domain.io"
```

Change the `baseUrl` to the URL of your deployed Jupyterlab instance.


## Testing

You can deploy the temporary project to ploomber cloud.

run this from the root directory:

```sh
docker build . -t mirascope-docs
docker run -p 8000:80 mirascope-docs 
```

