 379  git clone https://github.com/Burhan1009/WordPress.git
  380  clear
  381  ls
  382  cd WordPress/
  383  clear
  384  ls
  385  cd kind-cluster/
  386  tree
  387  clear
  388  tree
  389  kind create cluster --name=ecommerce-web --config=config.yml
  390  clear
  391  kubectl get nodes
  392  cd ../kubernetes/
  393  clear
  394  cat namespace.yml
  395  kubectl apply -f namespace.yml
  396  kubectl get ns
  397  cat wordpress-deployment.yml
  398  clear
  399  ls
  400  vim wordpress-pv.yml
  401  vim persistentVolume.yml
  402  clear
  403  ls
  404  rm wordpress-pv.yml
  405  clear
  406  tree
  407  kubectl apply -f persistentVolume.yml
  408  kubectl get ns
  409  kubectl get pv -n wordpress-namespace
  410  cat persistentVolume.yml
  411  clear
  412  ls
  413  history
  414  clear
  415  kubectl get pv -n wordpress-namespace
  416  vim persistentVolume.yml
  417  kubectl apply -f persistentVolume.yml
  418  kubectl get pv -n wordpress-namespace
  419  clear
  420  tree
  421  vim persistentVolumeClaim.yml
  422  vim wordpress-deployment.yml
  423  cat persistentVolumeClaim.yml
  424  vim persistentVolumeClaim.yml
  425  clear
  426  tree
  427  kubectl apply -f persistentVolumeClaim.yml
  428  kubectl get pv -n wordpress-namespace
  429  cat persistentVolumeClaim.yml
  430  history
  431  clear
  432  cat persistentVolume.yml
  433  clear
  434  cat wordpress-deployment.yml
  435  clear
  436  cat wordpress-deployment.yml
  437  clear
  438  vim mysql-deployment.yml
  439  rm mysql-deployment.yml
  440  vim mysql-deployment.yml
  441  clear
  442  vim persistentVolumeClaimMysql.yml
  443  tree
  444  clear
  445  tree
  446  kubectl apply -f persistentVolumeClaimMysql.yml
  447  kubectl get pv -n wordpress-namespace
  448  kubectl get pvc -n wordpress-namespace
  449  kubectl get pv -n wordpress-namespace
  450  kubectl get pvc -n wordpress-namespace
  451  clear
  452  cat persistentVolumeClaim.yml
  453  clear
  454  kubectl get pvc -n wordpress-namespace
  455  clear
  456  kubectl get pvc -n wordpress-namespace -w
  457  vim persistentVolumeClaimMysql.yml
  458  clear
  459  kubectl apply -f persistentVolumeClaimMysql.yml
  460  cat persistentVolumeClaimMysql.yml
  461  rm persistentVolumeClaimMysql.yml
  462  vim mysql-persistentVolumeClaim.yml
  463  clear
  464  kubectl get pvc -n wordpress-namespace
  465  kubectl apply -f mysql-persistentVolumeClaim.yml
  466  vim mysql-persistentVolumeClaim.yml
  467  cat mysql-persistentVolumeClaim.yml
  468  cat mysql-deployment.yml
  469  vim mysql-deployment.yml
  470  rm mysql-deployment.yml
  471  vim mysql-deployment.yml
  472  clear
  473  kubectl apply -f mysql-persistentVolumeClaim.yml
  474  cat persistentVolume.yml
  475  vim mysql-persistentVolumeClaim.yml
  476  vim mysql-persistentVolume.yml
  477  clear
  478  kubectl apply -f mysql-persistentVolumeClaim.yml
  479  clear
  480  tree
  481  kubectl apply -f mysql-persistentVolume.yml
  482  kubectl apply -f mysql-persistentVolumeClaim.yml
  483  cat mysql-persistentVolumeClaim.yml
  484  rm mysql-persistentVolumeClaim.yml
  485  vim mysql-persistentVolumeClaim.yml
  486  kubectl apply -f mysql-persistentVolumeClaim.yml
  487  kubectl get pv -n wordpress-namespace
  488  cat persistentVolume.yml
  489  ls
  490  cat persistentVolumeClaim.yml
  491  cat mysql-persistentVolume.yml
  492  cat mysql-persistentVolumeClaim.yml
  493  vim mysql-persistentVolume.yml
  494  vim mysql-persistentVolumeClaim.yml
  495  clear
  496  vim mysql-persistentVolume.yml
  497  kubectl apply -f mysql-persistentVolume.yml
  498  kubectl apply -f mysql-persistentVolumeClaim.yml
  499  kubectl get ns
  500  kubectl get pvc -n wordpress-namespace
  501  kubectl get pvc -n wordpress-namespace -w
  502  vim mysql-persistentVolumeClaim.yml
  503  vim mysql-persistentVolume.yml
  504  kubectl get pvc -n wordpress-namespace -w
  505  vim mysql-persistentVolumeClaim.yml
  506  vim mysql-persistentVolume.yml
  507  clear
  508  ls
  509  clear
  510  tree
  511  kubectl apply -f mysql-persistentVolume.yml
  512  kubectl apply -f mysql-persistentVolumeClaim.yml
  513  clear
  514  kubectl get pvc -n wordpress-namespace
  515  cat persistentVolumeClaim.yml
  516  rm mysql-persistentVolumeClaim.yml
  517  vim mysql-pvc.yml
  518  cat mysql-persistentVolume.yml
  519  cat persistentVolumeClaim.yml
  520  cat persistentVolume.yml
  521  cat mysql-pvc.yml
  522  tree
  523  clear
  524  tree
  525  cat persistentVolume.yml
  526  cat mysql-persistentVolume.yml
  527  clear
  528  tree
  529  cat persistentVolumeClaim.yml
  530  cat mysql-pvc.yml
  531  vim mysql-pvc.yml
  532  clear
  533  tree
  534  kubectl apply -f persistentVolume.yml
  535  kubectl apply -f persistentVolumeClaim.yml
  536  kubectl apply -f mysql-persistentVolume.yml
  537  kubectl apply -f mysql-pvc.yml
  538  clear
  539  kubectl get ns -n wordpress-namepsace
  540  kubectl get pvc -n wordpress-namespace
  541  history
  542  clear
  543  kubectl apply -f mysql-pvc.yml
  544  kubectl delete pvc mysql-pvc -n wordpress-namespace
  545  rm mysql-pvc.yml
  546  vim mysql-pvc.yml
  547  kubectl apply -f mysql-pvc.yml
  548  kubectl get pvc -n wordpress-namespace
  549  clear
  550  kubectl get pvc -n wordpress-namespace
  551  cat mysql-pvc.yml
  552  cat mysql-persistentVolume.yml
  553  clear
  554  ls
  555  cd web/
  556  cd Wor
  557  ls
  558  cd Work2
  559  ls
  560  cd WordPress/
  561  clear
  562  ls
  563  kubectl get pvc -n wordpress-namespace
  564  tree
  565  ls
  566  cd kubernetes/
  567  vim mysql-deployment.yml
  568  vim mysqlStatefulSet.yml
  569  ls
  570  tree
  571  clear
  572  tree
  573  vim secrets.yml
  574  cat secrets.yml
  575  clear
  576  tree
  577  vim comfigMap.yml
  578  cat mysqlStatefulSet.yml
  579  cat secrets.yml
  580  ls
  581  cat comfigMap.yml
  582  rm comfigMap.yml
  583  vim configMap.yml
  584  vim configMap.yml
  585  clear
  586  ks
  587  ls
  588  tree
  589  clear
  590  kubectl apply -f secrets.yml
  591  kubectl get secrets -n wordpress-namespace
  592  kubectl describe secrets/mysql-secret -n wordpress-namespace
  593  kubectl apply -f configMap.yml
  594  kubectl get configmaps -n wordpress-namespace
  595  kubectl describe configmap/mysql-config -n wordpress-namespace
  596  cat configMap.yml
  597  kubectl describe configmap/mysql-secret -n wordpress-namespace
  598  clear
  599  history
  600  clear
  601  kubectl get secrets -n wordpress-namespace
  602  cat mysql-service.yml
  603  clear
  604  kubectl get secrets -n wordpress-namespace
  605  ls
  606  clear
  607  tree
  608  clear
  609  kubectl get secrets -n wordpress-namespace
  610  cat secrets.yml
  611  clear
  612  kubectl get secrets -n wordpress-namespace
  613  cat secrets.yml
  614  kubectl describe secrets/mysql-secret -n wordpress-namespace
  615  clear
  616  kubectl get configmaps -n wordpress-namespace
  617  kubectl describe configmap/mysql-secret -n wordpress-namespace
  618  cat configMap.yml
  619  clear
  620  ls
  621  cat mysqlStatefulSet.yml
  622  clear
  623  tree
  624  rm mysqlStatefulSet.yml
  625  vim mysqlStatefulSet.yml
  626  clear
  627  ls
  628  history
  629  clear
  630  ls
  631  rm mysql-service.yml
  632  vim mysql-service.yml
  633  clear
  634  kubectl apply -f mysqlStatefulSet.yml
  635  kubectl apply -f mysql-service.yml
  636  kubectl get all -n wordpress-namespace
  637  clear
  638  kubectl get all -n wordpress-namespace
  639  clear
  640  kubectl get all -n wordpress-namespace
  641  cat mysqlStatefulSet.yml
  642  clear
  643  kubectl apply -f mysql-service.yml
  644  kubectl get all -n wordpress-namespace
  645  kubectl get all -n wordpress-namespace -w
  646  kubectl get all -n wordpress-namespace
  647  clear
  648  kubectl get all -n wordpress-namespace
  649  kubectl describe pod mysql-0 -n wordpress-namespace
  650  clear
  651  cat mysqlStatefulSet.yml
  652  clear
  653  ls
  654  cat secrets.yml
  655  clear
  656  rm configMap.yml
  657  vim configMap.yml
  658  nc -z mysql-svc 3306
  659  kubectl get svc mysql-svc -n wordpress-namespace
  660  tree
  661  cat mysql-service.yml
  662  nc -z mysql-headless 3306
  663  nc -z mysql 3306
  664  nc -z mysql-0.mysql-headless.wordpress-namespace.svc.cluster.local 3306
  665  vim mysql-service.yml
  666  kubectl apply -f mysql-service.yml
  667  nc -z mysql 3306
  668  kubectl get all -n wordpress-namespace
  669  kubectl get all -n wordpress-namespace -w
  670  kubectl get all -n wordpress-namespace
  671  clear
  672  ls
  673  cat mysql-service.yml
  674  rm mysql-service.yml
  675  vim mysql-service.yml
  676  kubectl apply -f  mysql-service.yml
  677  kubectl get all -n wordpress-namespace
  678  clear
  679  kubectl get all -n wordpress-namespace
  680  tree
  681  clear
  682  cat wordpress-deployment.yml
  683  clear
  684  kubectl get all -n wordpress-namespace
  685  cat mysql-service.yml
  686  vim mysql-service.yml
  687  rm mysql-service.yml
  688  vim mysql-service.yml
  689  kubectl apply -f mysql-service.yml
  690  kubectl get all -n wordpress-namespace
  691  vim wordpress-deployment.yml
  692  kubectl apply -f wordpress-deployment.yml
  693  kubectl get all -n wordpress-namespace
  694  kubectl get all -n wordpress-namespace -t
  695  kubectl get all -n wordpress-namespace -w
  696  kubectl get all -n wordpress-namespace
  697  vim wordpress-deployment.yml
  698  kubectl apply -f wordpress-deployment.yml
  699  kubectl get all -n wordpress-namespace
  700  kubectl describe pod wordpress-deploy-57f47d85-nlglh -n wordpress-namespace
  701  clear
  702  tree
  703  vim secrets.yml
  704  kubectl apply -f secret.yml
  705  kubectl apply -f secrets.yml
  706  clear
  707  kubectl get secret mysql-secret -n wordpress-namespace -o yaml
  708  kubectl apply -f wordpress-deployment.yml
  709  kubectl get pods -n wordpress-namespace
  710  kubectl get all -n wordpress-namespace
  711  cat wordpress-deployment.yml
  712  clear
  713  ls
  714  cat wordpress-service.yml
  715  clear
  716  kubectl apply -f wordpress-deployment.yml
  717  kubectl get ddeployment -n wordpress-namespace
  718  kubectl get deployment -n wordpress-namespace
  719  kubectl get all -n wordpress-namespace
  720  kubectl apply wordpress-service.yml
  721  kubectl apply -f wordpress-service.yml
  722  kubectl port-forward service/wordpress-namespace -n wordpress-namespace 8080:8080 --address=0.0.0.0
  723  kubectl port-forward svc/wordpress-namespace -n wordpress-namespace 8080:8080 --address=0.0.0.0
  724  kubectl port-forward svc/wordpress-service -n wordpress-namespace 8080:8080 --address=0.0.0.0
  725  Error from server (NotFound): services "wordpress-service" not found
  726  clear
  727  tree
  728  cat wordpress-service.yml
  729  kubectl port-forward svc/wordpress-svc -n wordpress-namespace 8080:8080 --address=0.0.0.0
  730  kubectl apply -f wordpress-service.yml
  731  clear
  732  cat wordpress-service.yml
  733  kubectl port-forward svc/wordpress-svc -n wordpress-namespace 8100:8100 --address=0.0.0.0
  734  kubectl port-forward svc/wordpress-svc 8100:8100 -n wordpress-namespace
  735  kubectl get pods -n wordpress-namespace
  736  clear
  737  cat wordpress-deployment.yml
  738  clear
  739  cat wordpress-service.yml
  740  kubectl port-forward svc/wordpress-svc 8100:8100 -n wordpress-namespace
  741  clear
  742  vim wordpress-deployment.yml
  743  kubectl apply -f wordpress-deployment.yml
  744  clear
  745  kubectl port-forward svc/wordpress-svc 8100:8100 -n wordpress-namespace
  746  clear
  747  vim wordpress-service.yml
  748  kubectl apply -f wordpress-service.yml
  749* kubectl port-forward svc/wordpress-svc  -n wordpress-namespace
  750  cat wordpress-service.yml
  751  vim wordpress-service.yml
  752  kubectl apply -f wordpress-service.yml
  753  vim wordpress-service.yml
  754  clear
  755* kubectl port-forward svc/wordpress-svc 8080:80 -n wordpress-namespace
  756  kubectl port-forward svc/wordpress-svc 8100:80 -n wordpress-namespace
  757  kubectl port-forward svc/wordpress-svc 80:8100 -n wordpress-namespace
  758  kubectl port-forward svc/wordpress 8100:80 -n wordpress-namespace
  759  kubectl port-forward svc/wordpress-svc 8100:80 -n wordpress-namespace
  760  cat wordpress-service.yml
  761  vim wordpress-service.yml
  762  kubectl apply -f wordpress-service.yml
  763  kubectl port-forward svc/wordpress-svc 8100:80 -n wordpress-namespace
  764  clear
  765  cd ..
  766  ;s
  767  ls
  768  cd wordpress/
  769  ls
  770  cat Dockerfile
  771  clear
  772  vim Dockerfile
  773  docker login -u burhan503
  774  docker build -t burhan503-wordpress .
  775  docker tag burhan503-wordpress:latest burhan503/burhan503-wordpress:v1.0
  776  docker push burhan503/burhan503-wordpress:latest
  777  docker push burhan503/burhan503-wordpress:v1.2
  778  docker push burhan503/burhan503-wordpress:v1.0
  779  clear
  780  tree
  781  cd ../kubernetes/
  782  ls
  783  clear
  784  tree
  785  cat wordpress-deployment.yml
  786  clear
  787  vim wordpress-deployment.yml
  788  tree
  789  cat wordpress-configMap.yml
  790  clear
  791  tree
  792  cat wordpress-service.yml
  793  clear
  794  tre
  795  clear
  796  tree
  797  cat namespace.yml
  798  clear
  799  tree
  800  cat persistentVolume.yml
  801  clear
  802  tree
  803  cat persistentVolumeClaim.yml
  804  clear
  805  kubectl apply -f wordpress-deployment.yml
  806  clear
  807  cat wordpress-deployment.yml
  808  clear
  809  ubectl get a;;burhan503/burhan503-wordpress:v1.0zx
  810  c
  811  clear
  812  kubectl get all -n wordpress-namespace
  813  clear
  814  cat wordpress-service.yml
  815  vim wordpress-service.yml
  816  kubectl apply -f wordpress-service.yml
  817  cat wordpress-deployment.yml
  818  clear
  819  kubectl get all -n wordpress-namespace
  820  clear
  821  kubectl port-forward svc/wordpress-svc 8080:80 -n wordpress-namespace
  822  kubectl port-forward svc/mysql-service 3306:3306 -n wordpress-namespace
  823  tree
  824  kubectl port-forward svc/mysql-svc 3306:3306 -n wordpress-namespace
  825  hitory
  826  history
  827  docker ps
  828  kubectl get clusters
  829  kubectl get cluster
  830  kubectl get clusters
  831  kind get clusters
  832  kind delete cluster ecommerce-web
  833  kind delete cluster ecommerce-web -name ecommerce-web
  834  kubectl delete cluster ecommerce-web --name ecommerce-web
  835  kubectl delete cluster ecommerce-web --name ecommerce-webclear\
  836  clear
  837  kind get clusters
  838  kind delete cluster --name=ecommerce-web
  839  docker ps
  840  kubectl port-forward svc/mysql-svc 3306:3306 -n wordpress-namespace
  841  clear
  842  kind get clusters
  843  kind delete cluster -name=wordpress-namespace
  844  kind delete cluster --name=wordpress-namespace
  845  docker ps
  846  docker images
  847  docker rmi $(docker images -q)
  848  docker images
  849  docker stop $(docker ps -aq)
  850  docker rm $(docker ps -aq)
  851  clear
  852  docker stop $(docker ps -aq)
  853  docker images
  854  docker stop 6e03 6e03 f4c0
  855  docker stop -f 6e03 f4c0
  856  docker stop 6e03 f4c0
  857  docker images -q
  858  docker rmi $(docker images -q)
  859  docker rmi -r $(docker images -q)
  860  docker rmi $(docker images -r)
  861  clear
  862  docker ps
  863  docker images
  864  docker rmi 6e036628a4c6 f4c026a8ee03
  865  docker rmi -f 6e036628a4c6 f4c026a8ee03
  866  docker images
  867  clear
  868  docker images
  869  clear
  870  docker ps
  871  cd ..
  872  ls
  873  cd kind-cluster/
  874  clear
  875  ls
  876  kind create cluster --name=wordpress-namespace --config=config.yml
  877  clear
  878  kubectl get nodes
  879  kubectl get ns
  880  cd ../kubernetes/
  881  clear
  882  kubectl apply -f namespace.yml
  883  kubectl get ns
  884  kubectl apply -f persistentVolume.yml
  885  kubectl get pv -n wordpress-namespace
  886  kubectl apply -f persistentVolumeClaim.yml
  887  kubectl get pv -n wordpress-namespace
  888  kubectl get pvc -n wordpress-namespace
  889  tree
  890  cat mysql-persistentVolume.yml
  891  cat persistentVolumeClaim.yml
  892  kubectl apply -f mysql-persistentVolume.yml
  893  tree
  894  rm mysql-deployment.yml
  895  kubectl get pvc -n wordpress-namespace
  896  tree
  897  kubectl apply -f mysql-pvc.yml
  898  kubectl get pvc -n wordpress-namespace
  899  kubectl apply -f configMap.yml
  900  kubectl apply -f secrets.yml
  901  kubectl apply -f wordpress-deployment.yml
  902  kubectl get deployment -n wordpress-namespace
  903  kubectl apply -f  wordpress-service.yml
  904  kubectl apply -f .
  905  kubectl get all -n wordpress-namespace
  906  kubectl get all -n wordpress-namespace -w
  907  kubectl get all -n wordpress-namespace
  908  kubectl port-forward svc/mysql-service 3306:3306 -n wordpress-namespace
  909  clear
  910  tree
  911  cat mysql-service.yml
  912  kubectl port-forward svc/mysql-headless 3306:3306 -n wordpress-namespace
  913  kubectl port-forward svc/mysql-svc 3306:3306 -n wordpress-namespace
  914  docker ps
  915  docker exec -it 19ef064a074d bash
  916  kubectl get all -n wordpress-namespace
  917  kubectl logs mysql-svc -n wordpress-namespace
  918  kubectl logs mysql-0 -n wordpress-namespace
  919  clear
  920  tree
  921  cat configMap.yml
  922  cat wordpress-configMap.yml
  923  vim wordpress-configMap.yml
  924  kubectl apply -f  wordpress-configMap.yml
  925  kubectl port-forward svc/mysql-svc 3306:3306 -n wordpress-namespace
  926  cat wordpress-deployment.yml
  927  kubectl port-forward svc/mysql-svc 3306:3306 -n wordpress-namespace
  928  history
