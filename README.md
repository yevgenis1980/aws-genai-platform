<img width="800" height="533" alt="image" src="https://github.com/user-attachments/assets/f0275285-60aa-46b6-8749-e11bf059ac08" />



## AWS | GenAI Chatbot
Architecture with public and private subnets, an Application Load Balancer (ALB), EC2 instances, and private resources. It demonstrates how users interact with the system, and how scaling and secure resource access are managed.



🎯 Architecture Overview
```
✅ Deployment & Infrastructure Layer : Code repositories, CI/CD pipelines, AWS CDK, S3/CloudFront, Cognito, API Gateway/AppSync, vector databases, and Bedrock endpoints.
✅ Chatbot Runtime: User queries go through API Gateway → Lambda preprocessing → RAG retrieval → LLM query → post-processing → response to the user.
✅ Monitoring & Feedback: CloudWatch metrics, EventBridge alerts, analytics, automated updates, and optional API triggers.
```


🧱 Features
```
✔ Multi-Model Support
AWS GenAI Chatbot can query multiple LLMs at once. This allows you to compare responses from different models and select the best one for your application.
✔ RAG Workspaces
Users can upload documents, PDFs, or structured data into workspaces. The chatbot indexes this content and retrieves relevant information dynamically during conversations.
✔ Multimodal Capabilities
Beyond text, the chatbot can interact with multimodal content such as images, leveraging models hosted on SageMaker or Bedrock for richer responses.
✔ Security and Access Control
Integration with Amazon Cognito enables authentication, role-based access control, and secure access to sensitive information.
✔ Scalability & Monitoring
AWS services such as CloudWatch and EventBridge allow monitoring, logging, and alerting, ensuring your chatbot scales efficiently and operates reliably.
```



🚀 Deployment Options
```
terraform init
terraform validate
terraform plan -var-file="template.tfvars"
terraform apply -var-file="template.tfvars" -auto-approve
```

