from celery import Celery

BROKER = 'pyamqp://test-user:password@rabbitmq/test-vhost'
BACKEND = 'rpc://test-user:password@rabbitmq/test-vhost'
app = Celery('tasks', broker=BROKER, backend=BACKEND)

@app.task
def add(x, y):
    return x + y
