echo "Script de criação das imagens docker"
docker build -t mlbsantos/webapp-backend:1.0 backend/.
docker build -t mlbsantos/database-webapp:1.0 database/.

echo "Realizando push das imagens para o docker hub"
docker push mlbsantos/webapp-backend:1.0
docker push mlbsantos/database-webapp:1.0

echo "Criando os PersistentVolume"
kubectl apply -f backend/k8s/webapp-pv.yaml --record
kubectl apply -f database/k8s/database-pv.yaml --record

echo "Criando os PersistentVolumeClaim"
kubectl apply -f backend/k8s/webapp-pvc.yaml --record
kubectl apply -f database/k8s/database-pvc.yaml --record

echo "Criando os Services"
kubectl apply -f backend/k8s/webapp-service.yaml --record
kubectl apply -f database/k8s/database-service.yaml --record

echo "Criando os Deployments"
kubectl apply -f backend/k8s/deployment.yaml --record
kubectl apply -f database/k8s/deployment.yaml --record