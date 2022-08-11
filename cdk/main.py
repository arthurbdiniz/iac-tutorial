from aws_cdk import (
    aws_s3 as s3,
    core,
)


class MyStack(core.Stack):
    def __init__(self, app: core.App, id: str) -> None:
        super().__init__(app, id)

        bucket = s3.Bucket(
            self,
            id="test-unb-bucket",
            bucket_name="test-unb-bucket",
            versioned=True,
            removal_policy=core.RemovalPolicy.DESTROY,
            auto_delete_objects=True,
        )

app = core.App()
MyStack(app, "MyStack")
app.synth()