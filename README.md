<p align="center">
    <a href="#" target="_blank">
        <img src="https://avatars0.githubusercontent.com/u/993323" height="100px">
    </a>
    <h1 align="center">Yii 2 Advanced Meeting</h1>
     <br>
    <h1 align="center">อยู่ระหว่างพัฒนา</h1>
    <br>
</p>


<h3 align="center">ติดตั้ง</h3>

```
composer update
```




<h3 align="center">ตั้งค่า</h3>

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

<h3 align="center">ใช้งาน</h3>

```
http://localhost/advanced-meeting/backend/web/index.php
```
```
User : admin
Paswword : admin
```