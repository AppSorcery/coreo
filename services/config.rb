
coreo_aws_vpc_routetable "${PRIVATE_ROUTE_NAME}" do
  action :find_or_create
  vpc "${VPC_NAME}"
  number_of_tables 3
  routes [
             { :from => "0.0.0.0/0", :to => "STACK::coreo_aws_ec2_autoscaling.${VPC_NAME}.asg_name", :type => :asg }
        ]
end
