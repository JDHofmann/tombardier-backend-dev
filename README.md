For Users:

rails active_storage:install

bundle install

once you set up your cloud storage service:
    - go to config/storage.yml 
        - add your service underneath the local sections
        - namespace all your details under a title for the serivice
    - comment out config/environments/development
        line 29:
              config.active_storage.service = :local
        - then add your servie title from config/storage.yml
    - comment out config/environments/production
        line 33:
              config.active_storage.service = :local
        - then add your servie title from config/storage.yml
