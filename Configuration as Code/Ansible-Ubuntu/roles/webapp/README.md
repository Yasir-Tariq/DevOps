WebApp
=========

Role for deploying a web application on Ec2 instance (Ubuntu 18.04) and installing required packages.

Requirements
------------

AWS Ec2 instance or any other alternative is required.

Role Variables
--------------

Defaults have been used to assign values to respective variables.


Example Playbook
----------------

Including an example of how to use your role:

    - hosts: webserver
      roles:
         - webapp
