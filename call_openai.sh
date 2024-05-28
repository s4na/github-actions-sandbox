#!/bin/bash

# APIキーを環境変数から取得
OPENAI_API_KEY=$1

# curlコマンドでOpenAI APIを呼び出し
curl -X POST https://api.openai.com/v1/completions \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $OPENAI_API_KEY" \
  -d '{
    "model": "text-davinci-003",
    "prompt": "Translate the following English text to French: \"Hello, world!\"",
    "max_tokens": 60
  }' > response.json
