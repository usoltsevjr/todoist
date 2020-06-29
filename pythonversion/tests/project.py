import pytest
import todoist
from todoist.api import TodoistAPI


#Создание нового проекта
@pytest.fixture()
def createproject():
    api = todoist.TodoistAPI('313f6bf203b35e7ac56e39561a80633e459c9c54')
    project = api.projects.add('NewProject')
    api.commit()
    return project
    print(project)
    

def test_createproject(createproject):
    Project = {'name' : "NewProject"}

project = createproject

#Добавление задачи без даты
@pytest.fixture()
def createtask(project):
    api = todoist.TodoistAPI('313f6bf203b35e7ac56e39561a80633e459c9c54')
    task1 = api.items.add('New Task', project_id=project['id'])
    api.commit()
    print(task1)
    return task1

def test_task(createtask):
    Item = {'content' : "New Task"}

task1 = createtask

#Добавление задачи с датой и временем
@pytest.fixture()
def taskwithdate(project):
    api = todoist.TodoistAPI('313f6bf203b35e7ac56e39561a80633e459c9c54')
    task2 = api.items.add('Task2', project_id=project['id'])
    task2.update(content='NewTask_withdate', due={'string': 'tomorrow at 12:00'})
    api.commit()
    print(task2)
    return task2

def test_taskdate(taskwithdate):
    Item = {'due' : 'tomorrow at 12:00'}

#Создание подзадачи
@pytest.fixture()
def subtask(project, task1):
    api = todoist.TodoistAPI('313f6bf203b35e7ac56e39561a80633e459c9c54')
    subtask = api.items.add('Subtask', project_id=project['id'], parent_id=task1['id'])
    subtask.move(parent_id=task1['id'])
    api.commit()
    print(subtask)

def test_subtask(subtask):
    Item = {'content' : "Subtask",}

#Создание комментария к задаче
@pytest.fixture()
def comment(task1):
    api = todoist.TodoistAPI('313f6bf203b35e7ac56e39561a80633e459c9c54')
    comment = api.notes.add(task1['id'], 'Comment')
    api.commit()
    print(comment)

def test_comment(comment):
    Note = {'content': 'Comment'}