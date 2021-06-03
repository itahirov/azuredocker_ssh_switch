# Python image
Basic Python image, a Flask app served with Gunicorn

## To deploy an image to App Service
* Build the image with `docker build -t <your_container_registry>/<image_name> .` (notice the **.** at the end)
* Push it to your registry with `docker push <your_container_registry>/<image_name>`
* In your **Linux Web App**, go to **Container Settings** and set the image.

