# web3-proxy

JSON RPC Proxy to bypass cross-origin policies (CORS - Cross-origin resource sharing - http header and browsers security measure) 

Sometimes (in dev envs especially) you want to escape CORS as you don't want to or when you can't touch the server 

## prereqs

- ruby 
- web3 running


## config

TODO: add config doc
config: https://github.com/makevoid/web3-proxy/tree/master/config

## install

    bundle install

## running

    bundle exec rake
    
This will start a proxy on http:// or if you pass the `rake VAR=1` env variable to rake by running `bundle exec rake RPC_HOST=123 RPC_PORT=xxx` (TODO: finish doc) http://localhost:8545 or      
    
   
Enjoy, 

@makevoid
