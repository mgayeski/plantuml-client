# plantuml-client
Simple docker container for rendering PlantUML diagrams from the command line for when you don't want to host a server.

The container takes a volume mount to the /diagrams path and will render all of the diagrams in that directory. Example: 
 
 ```
 docker run -v C:\\code\\diagrams:/diagrams -it mgayeski/plantuml-client
 ```

Directory before:
 ```
Mode                LastWriteTime         Length Name
----                -------------         ------ ----
-a----        5/16/2019   9:20 AM            197 architecture.plantuml
-a----        5/16/2019   9:20 AM            197 flowChart.plantuml
```

Directory after:
```
Mode                LastWriteTime         Length Name
----                -------------         ------ ----
-a----        5/16/2019   9:20 AM            197 architecture.plantuml
-a----        5/16/2019  11:48 AM           4944 architecture.png
-a----        5/16/2019   9:20 AM            197 flowChart.plantuml
-a----        5/16/2019  11:48 AM           5047 flowChart.png
```

 You may pass arguments as well:
 ```
 docker run -v C:\\code\\diagrams:/diagrams -it mgayeski/plantuml-client -tsvg /diagrams/*.uml
 ```