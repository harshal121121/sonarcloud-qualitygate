CHANGED_FILES=$(git diff --name-only HEAD~1)

LOW_RISK=false

# Example rule
if [[ "$CHANGED_FILES" == *"ui/"* ]]; then
  LOW_RISK=true
fi

echo "LOW_RISK=$LOW_RISK"

if [[ "$SONAR_STATUS" == "OK" ]]; then
  echo "PASS: Sonar OK"
elif [[ "$LOW_RISK" == "true" ]]; then
  echo "PASS: Override (Low Risk)"
else
  echo "FAIL: High Risk + Sonar Fail"
  exit 1
fi