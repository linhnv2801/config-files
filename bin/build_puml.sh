if [ -n "$1" ]; then
    echo $PLANTUML_JAR
    echo "Building: $1 | Type: tex"
    java -Djava.awt.headless=true \
    -jar $PLANTUML_JAR \
    -charset UTF-8 \
    -tlatex:nopreamble $1 
    echo "Done: $1" 

    echo "Building: $1 | Type: svg"
    java -Djava.awt.headless=true \
    -jar $PLANTUML_JAR \
    -charset UTF-8 \
    -tsvg $1 
    echo "Done: $1" 

    echo "Building: $1 | Type: png"
    java -Djava.awt.headless=true \
    -jar $PLANTUML_JAR \
    -charset UTF-8 \
    -tpng $1 
    echo "Done: $1" 
fi
