
proxy_addr="https://ghfast.top/"

# https://github.com/intro-skipper/intro-skipper
manifest="https://raw.githubusercontent.com/intro-skipper/manifest/refs/heads/main/10.11/manifest.json"

curl $manifest -o intro-skipper-manifest.json

sed -i 's#https://github.com#'"${proxy_addr}"'https://github.com#g' intro-skipper-manifest.json
sed -i 's#https://raw.githubusercontent.com#'"${proxy_addr}"'https://raw.githubusercontent.com#g' intro-skipper-manifest.json
