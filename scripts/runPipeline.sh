docker exec -it hop-web bash -lc '
/usr/local/tomcat/webapps/ROOT/hop-run.sh \
  -j data-pipeline \
  -r local \
  -f "${PROJECT_HOME}/pipelines/test.hpl" \
  -l BASIC
'
