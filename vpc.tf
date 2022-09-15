
#create vpc
resource "aws_vpc" "prod-vpc"{
    cidr_block = "192.168.0.0/16"

    tags = {
        Name = "ta-vpc"
        Environment = "Test"
        Team = "Talent-Academy"
        Owner = " Jemila"
    }
    
}

/*
#create subnet
#if true - public
#otherwise - private
#subnet1
resource "aws_subnet" "prod-subnet-public-1" {
    vpc_id = “${aws_vpc.prod-vpc.id}”
    cidr_block = “192.168.1.0/24”
    map_public_ip_on_launch = “true” //it makes this a public subnet
    availability_zone = “eu-west-2a”
    tags {
        Name = “prod-subnet-public-1”
    }
}
*/