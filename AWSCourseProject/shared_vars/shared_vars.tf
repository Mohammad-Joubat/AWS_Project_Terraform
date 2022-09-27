output "vpcid" {
	value ="${local.vpcid}"
}


output "publicsubnetid1" {
	value ="${local.publicsubnetid1}"
}


output "publicsubnetid2" {
	value ="${local.publicsubnetid2}"
}


output "privatesubnetid" {
	value ="${local.privatesubnetid}"
}


output "env_suffix" {
	value ="${local.env}"
}








locals{
	env ="${terraform.workspace}"

	vpcid_env ={
		default ="vpc-0fafb0feebecf50c0"
		staging ="vpc-0fafb0feebecf50c0"
		production ="vpc-0fafb0feebecf50c0"
	}
	vpcid ="${lookup(local.vpcid_env,local.env)}"


	publicsubnetid1_env ={
		default ="subnet-075bc5d34c1d7d3a9"
		staging ="subnet-075bc5d34c1d7d3a9"
		production ="subnet-075bc5d34c1d7d3a9"
	}
	publicsubnetid1="${lookup(local.publicsubnetid1_env,local.env)}"



	publicsubnetid2_env ={
		default ="subnet-06a6d13eab0467569"
		staging ="subnet-06a6d13eab0467569"
		production ="subnet-06a6d13eab0467569"
	}
	publicsubnetid2="${lookup(local.publicsubnetid2_env,local.env)}"


	privatesubnetid_env ={
		default ="subnet-08da1d5d3ef286dfc"
		staging ="subnet-08da1d5d3ef286dfc"
		production ="subnet-08da1d5d3ef286dfc"
	}
	privatesubnetid="${lookup(local.privatesubnetid_env,local.env)}"




}