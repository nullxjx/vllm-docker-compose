curl -c cookies.txt -b cookies.txt --location 'http://127.0.0.1/v1/chat/completions' \
    -H "Content-Type: application/json" \
    -d '{
        "model": "codewise-chat",
        "max_tokens": 128,
        "stream": true,
        "temperature": 0,
        "messages": [
            {"role": "user", "content": "你能不能详细介绍一下深度学习的发展历史？"}
        ]
    }'