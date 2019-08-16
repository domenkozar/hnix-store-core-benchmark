#  This is not a real benchmark yet, but "finger in the air" estimate.

On my machine::
    
    $ cabal new-run hnix-store-core-benchmark -- /nix/store/ixx4a948hb9wfjx8gfvvy9yh4adpjvai-chromium-unwrapped-76.0.3809.100 | pv >/dev/null                                                                                                                                  
     316MiB 0:00:00 [1.39GiB/s] [     <=>              
    
    $ nix-store --dump /nix/store/ixx4a948hb9wfjx8gfvvy9yh4adpjvai-chromium-unwrapped-76.0.3809.100 | pv >/dev/null                                                                                                                                                            
     316MiB 0:00:00 [2.74GiB/s] [     <=>                                                                                                        
