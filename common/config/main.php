<?php
return [
    'aliases' => [
        '@bower' => '@vendor/bower-asset',
        '@npm'   => '@vendor/npm-asset',
    ],
    'vendorPath' => dirname(dirname(__DIR__)) . '/vendor',
    'name' => 'Meeting',
    'language' => 'th',
    'components' => [
        'cache' => [
            'class' => 'yii\caching\FileCache',
        ],
        //เปิด enablePrettyUrl จะทำให้ Path รูป ไม่ขึ้น
        // 'urlManager' => [
        //     'class' => 'yii\web\UrlManager',
        //     // Disable index.php
        //     'showScriptName' => false,
        //     // Disable r= routes
        //     'enablePrettyUrl' => true,
        //     'rules' => [ 
        //             '<controller:\w+>/<id:\d+>' => '<controller>/view',
        //             '<controller:\w+>/<action:\w+>/<id:\d+>' => '<controller>/<action>',
        //             '<controller:\w+>/<action:\w+>' => '<controller>/<action>',
        //             //'module/<module:\w+>/<controller:\w+>/<action:\w+>' => '<module>/<controller>/<action>',
        //    ],
        // ],
        'authManager' => [
            'class' => 'yii\rbac\DbManager',
            // uncomment if you want to cache RBAC items hierarchy
            // 'cache' => 'cache',
        ],
    ],
];
