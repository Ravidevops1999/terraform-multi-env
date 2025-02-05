resource "aws_instance" "expense"{
    for_each = var.instances
    ami = "ami-09c813fb71547fc4f"
    instance_type = each.value
    vpc_security_group_ids = ["sg-0f0063e4192fb0054"]
    tags = merge(
        var.common_tags,
        var.tags,
        {
            Name = each.key
        }
    )
}

