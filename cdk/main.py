from aws_cdk import (
    aws_s3 as s3,
    core,
)


class MyStack(core.Stack):
    def __init__(self, app: core.App, id: str) -> None:
        super().__init__(app, id)

        bucket = s3.Bucket(
            self, "test-unb-bucket",
            versioned=True
        )

app = core.App()
MyStack(app, "MyStack")
app.synth()