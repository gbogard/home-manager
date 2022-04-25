#!/bin/bash

echo Installing SDK Man                                                                                                                                                                    
curl -s "https://get.sdkman.io" | bash &> /dev/null || true                                                                                                                                
source ~/.zshrc                                                                                                                                                                            
                                                                                                                                                                                           
echo Installing GraalVM                                                                                                                                                                    
sdk install java 22.0.0.2.r17-grl                                                                                                                                                          
sdk use java 22.0.0.2.r17-grl                                                                                                                                                              
                                                                                                                                                                                           
echo Installing Scala                                                                                                                                                                      
sdk install scala 3.1.2                                                                                                                                                                    
sdk use scala 3.1.2                                                                                                                                                                        
                                                                                                                                                                                           
echo Installing sbt                                                                                                                                                                        
sdk install sbt 1.6.2                                                                                                                                                                      
sdk use sbt 1.6.2                                                                                                                                                                          
                                                                                                                                                                                           
source ~/.zshrc                               
