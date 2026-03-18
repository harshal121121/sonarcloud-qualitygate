CHANGED_FILES=$(git diff --name-only HEAD~1)

LOW_RISK=false

if [[ "$CHANGED_FILES" == *"test"* ]]; then
  LOW_RISK=true
fi

if [[ "$SONAR_STATUS" == "OK" ]]; then
  echo "PASS"
elif [[ "$LOW_RISK" == "true" ]]; then
  echo "PASS (Override)"
else
  echo "FAIL"
  exit 1
fi