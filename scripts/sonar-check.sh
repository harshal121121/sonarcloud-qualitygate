STATUS=$(curl -s \
  "https://sonarcloud.io/api/qualitygates/project_status?projectKey=YOUR_KEY" \
  | jq -r '.projectStatus.status')

echo "Sonar Status: $STATUS"

echo "SONAR_STATUS=$STATUS" >> $GITHUB_ENV