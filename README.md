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
    


This will start a proxy on `http://localhost:3000`.  



### project status

the project needs to be tested and documented, but the main code is done (the code is pretty small, start from: https://github.com/makevoid/web3-proxy/blob/master/web3_proxy.rb#L3 )! 

---
   
Enjoy, 

@makevoid
