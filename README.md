<p align="center">
    <a href="#" target="_blank">
        <img src="https://avatars0.githubusercontent.com/u/993323" height="100px">
    </a>
    <h1 align="center">Yii 2 Advanced Meeting</h1>
    <br>
</p>


```
composer update
```

```
User : admin
Paswword : admin123456
```

```
Create Database and Import file : advanced-meeting-21-6-2022.sql
Edit backend->common->config->main-local.php 

return [
    'components' => [
        'db' => [
            'class' => 'yii\db\Connection',
            'dsn' => 'mysql:host=localhost;dbname=yourdb_name',
            'username' => 'yourdb_username',
            'password' => 'yourdb_password',
            'charset' => 'utf8',
        ],
        'mailer' => [
            'class' => 'yii\swiftmailer\Mailer',
            'viewPath' => '@common/mail',
            // send all mails to a file by default. You have to set
            // 'useFileTransport' to false and configure a transport
            // for the mailer to send real emails.
            'useFileTransport' => true,
        ],
    ],
];
```