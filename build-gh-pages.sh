# Build script to update the branch gh-pages, which
# contains the live copy of the demo.
if $M2_HOME/bin/mvn package; then
    mkdir /tmp/gh-pages
    rmdir -fr /tmp/gh-pages
    cp -r target/requirejs/output/ /tmp/gh-pages
    if git checkout gh-pages; then
      rm -fr *
      cp -r /tmp/gh-pages/ .
      rmdir -fr /tmp/gh-pages
      #git add .
      #git commit -m "updated pages"
      #git checkout master
    fi
fi

