#!/usr/bin/env bash

echo "Start testing"

robot -d Todoist Todoist/Tests/project.robot
robot -d Todoist Todoist/Tests/task.robot
robot -d Todoist Todoist/Tests/taskdate.robot
robot -d Todoist Todoist/Tests/subtask.robot
robot -d Todoist Todoist/Tests/Comment.robot
robot -d Todoist Todoist/Tests/projectx3.robot
robot -d Todoist Todoist/Tests/errortask
robot -d Todoist Todoist/Tests/cancel.robot
robot -d Todoist Todoist/Tests/withouttext.robot

