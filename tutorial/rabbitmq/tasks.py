from celery import Celery

app = Celery('tasks', broker='pyamqp://test-user:password@rabbitmq/test-vhost')

@app.task
def add(x, y):
    return x + y
