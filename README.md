# Running Azure Building Blocks as a Container

1. Build the image

    ```bash
    docker build -t azbb-container .
    ``` 
1. Run the new container    

    ```bash
    docker run -it -v ${HOME}:/root azbb-container:latest
    ```
