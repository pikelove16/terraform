resource "aws_iam_user" "love" {
  name = "Daniel"
  

  tags = {
    tag-key = "moses"
  }
}


data "aws_iam_policy_document" "lb_ro" {
  statement {
    effect    = "Allow"
    actions   = ["ec2:Describe*"]
    resources = ["*"]
  }
}

resource "aws_iam_user_policy" "lb_ro" {
  name   = "test"
  user   = aws_iam_user.love.name
  policy = data.aws_iam_policy_document.lb_ro.json
}