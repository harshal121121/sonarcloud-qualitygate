STATUS=$(curl -s \
"https://sonarcloud.io/api/qualitygates/project_status?projectKey=harshal121121_sonarcloud-qualitygate" \
| jq -r '.projectStatus.status')

echo "SONAR_STATUS=$STATUS" >> $GITHUB_ENV