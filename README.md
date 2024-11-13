# vllm-docker-compose
docker-compose for [vllm](https://github.com/vllm-project/vllm/), support [sticky-sessions]( https://doc.traefik.io/traefik/routing/services/#sticky-sessions) using traefik to enable the [prefix-caching](https://docs.vllm.ai/en/v0.5.5/automatic_prefix_caching/apc.html) feature of vllm


## Usage
start services
```bash
docker-compose up -d
``` 

stop services
```bash
docker-compose down
```

test sticky-sessions
```bash
bash request.sh
```

You can observe that if you do not delete the cookie, your request will be load balanced to the same vllm instance every time.
If you delete the cookies, or if you don't use cookies, then load balancing between different instances will work normally.

