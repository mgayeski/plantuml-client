# plantuml-client
Simple docker container for rendering PlantUML diagrams from the command line for when you don't want to host a server.

The container takes a volume mount to the /diagrams path and will render all of the diagrams in that directory. Example: 
 
 ```
 docker run -v C:\\code\\diagrams:/diagrams -it mgayeski/plantuml-client
 ```

 You may pass arguments as well:
 ```
 docker run -v C:\\code\\diagrams:/diagrams -it mgayeski/plantuml-client -tsvg /diagrams/*.uml
 ```