<?php
namespace console\controllers;

use yii\console\Controller;
use Yii;

class RbacController extends Controller
{
    public function actionHello()
    {
        //echo "sam";
    }

    public function actionCreatePermission()
    {
        $auth = Yii::$app->authManager;
        //$auth->removeAll();

        // personal
        $person_default_index = $auth->createPermission('personal/default/index');
        $person_default_index->description = 'หน้าหลักโมดูลบุคคล';
        $auth->add($person_default_index);

        $person_person_index = $auth->createPermission('personal/person/index');
        $person_person_index->description = 'รายการบุคคล';
        $auth->add($person_person_index);

        $person_person_create = $auth->createPermission('personal/person/create');
        $person_person_create->description = 'เพิ่มบุคคล';
        $auth->add($person_person_create);

        $person_person_update = $auth->createPermission('personal/person/update');
        $person_person_update->description = 'แก้ไขบุคคล';
        $auth->add($person_person_update);

        $person_person_delete = $auth->createPermission('personal/person/delete');
        $person_person_delete->description = 'ลบบุคคล';
        $auth->add($person_person_delete);

        $person_person_view = $auth->createPermission('personal/person/view');
        $person_person_view->description = 'ดูบุคคล';
        $auth->add($person_person_view);

        // meeting
        // $meeting_default_index = $auth->createPermission('meeting/default/index');
        // $meeting_default_index->description = 'ปฏิทินการจองห้องประชุม';
        // $auth->add($meeting_default_index);



        // equipment
        $meeting_equipment_index = $auth->createPermission('meeting/equipment/index');
        $meeting_equipment_index->description = 'รายการอุปกรณ์';
        $auth->add($meeting_equipment_index);

        $meeting_equipment_create = $auth->createPermission('meeting/equipment/create');
        $meeting_equipment_create->description = 'เพิ่มอุปกรณ์';
        $auth->add($meeting_equipment_create);

        $meeting_equipment_update = $auth->createPermission('meeting/equipment/update');
        $meeting_equipment_update->description = 'แก้ไขอุปกรณ์';
        $auth->add($meeting_equipment_update);

        $meeting_equipment_delete = $auth->createPermission('meeting/equipment/delete');
        $meeting_equipment_delete->description = 'ลบอุปกรณ์';
        $auth->add($meeting_equipment_delete);

        $meeting_equipment_view = $auth->createPermission('personal/equipment/view');
        $meeting_equipment_view->description = 'ดูอุปกรณ์';
        $auth->add($meeting_equipment_view);

        // department
        $meeting_department_index = $auth->createPermission('meeting/department/index');
        $meeting_department_index->description = 'รายการฝ่าย';
        $auth->add($meeting_department_index);

        $meeting_department_create = $auth->createPermission('meeting/department/create');
        $meeting_department_create->description = 'เพิ่มฝ่าย';
        $auth->add($meeting_department_create);

        $meeting_department_update = $auth->createPermission('meeting/department/update');
        $meeting_department_update->description = 'แก้ไขฝ่าย';
        $auth->add($meeting_department_update);

        $meeting_department_delete = $auth->createPermission('meeting/department/delete');
        $meeting_department_delete->description = 'ลบฝ่าย';
        $auth->add($meeting_department_delete);

        $meeting_department_view = $auth->createPermission('meeting/department/view');
        $meeting_department_view->description = 'ดูฝ่าย';
        $auth->add($meeting_department_view);

        // meeting
        $meeting_meeting_index = $auth->createPermission('meeting/meeting/index');
        $meeting_meeting_index->description = 'รายการการจอง';
        $auth->add($meeting_meeting_index);

        $meeting_meeting_create = $auth->createPermission('meeting/meeting/create');
        $meeting_meeting_create->description = 'เพิ่มการจอง';
        $auth->add($meeting_meeting_create);

        $meeting_meeting_update = $auth->createPermission('meeting/meeting/update');
        $meeting_meeting_update->description = 'แก้ไขการจอง';
        $auth->add($meeting_meeting_update);

        $meeting_meeting_delete = $auth->createPermission('meeting/meeting/delete');
        $meeting_meeting_delete->description = 'ลบการจอง';
        $auth->add($meeting_meeting_delete);

        $meeting_meeting_view = $auth->createPermission('meeting/meeting/view');
        $meeting_meeting_view->description = 'ดูการจอง';
        $auth->add($meeting_meeting_view);

        // Person
        $meeting_person_index = $auth->createPermission('meeting/person/index');
        $meeting_person_index->description = 'รายการผู้ใช้';
        $auth->add($meeting_person_index);

        $meeting_person_create = $auth->createPermission('meeting/person/create');
        $meeting_person_create->description = 'เพิ่มผู้ใช้';
        $auth->add($meeting_person_create);

        $meeting_person_update = $auth->createPermission('meeting/person/update');
        $meeting_person_update->description = 'แก้ไขผู้ใช้';
        $auth->add($meeting_person_update);

        $meeting_person_delete = $auth->createPermission('meeting/person/delete');
        $meeting_person_delete->description = 'ลบผู้ใช้';
        $auth->add($meeting_person_delete);

        $meeting_person_view = $auth->createPermission('meeting/person/view');
        $meeting_person_view->description = 'ดูผู้ใช้';
        $auth->add($meeting_person_view);

         // Room
         $meeting_room_index = $auth->createPermission('meeting/room/index');
         $meeting_room_index->description = 'รายการห้อง';
         $auth->add($meeting_room_index);
 
         $meeting_room_create = $auth->createPermission('meeting/room/create');
         $meeting_room_create->description = 'เพิ่มห้อง';
         $auth->add($meeting_room_create);
 
         $meeting_room_update = $auth->createPermission('meeting/room/update');
         $meeting_room_update->description = 'แก้ไขห้อง';
         $auth->add($meeting_room_update);
 
         $meeting_room_delete = $auth->createPermission('meeting/room/delete');
         $meeting_room_delete->description = 'ลบห้อง';
         $auth->add($meeting_room_delete);

         $meeting_room_view = $auth->createPermission('meeting/room/view');
         $meeting_room_view->description = 'ดูห้อง';
         $auth->add($meeting_room_view);

         // Status
         $meeting_status_index = $auth->createPermission('meeting/status/index');
         $meeting_status_index->description = 'รายการสถานะ';
         $auth->add($meeting_status_index);
 
         $meeting_status_create = $auth->createPermission('meeting/status/create');
         $meeting_status_create->description = 'เพิ่มสถานะ';
         $auth->add($meeting_status_create);
 
         $meeting_status_update = $auth->createPermission('meeting/status/update');
         $meeting_status_update->description = 'แก้ไขสถานะ';
         $auth->add($meeting_status_update);
 
         $meeting_status_delete = $auth->createPermission('meeting/status/delete');
         $meeting_status_delete->description = 'ลบสถานะ';
         $auth->add($meeting_status_delete);

         $meeting_status_view = $auth->createPermission('meeting/status/view');
         $meeting_status_view->description = 'ดูสถานะ';
         $auth->add($meeting_status_view);

         //Report
         $meeting_report_report1 = $auth->createPermission('meeting/report/report1');
         $meeting_report_report1->description = 'รายงาน1';
         $auth->add($meeting_report_report1);

         $meeting_report_report2 = $auth->createPermission('meeting/report/report2');
         $meeting_report_report2->description = 'รายงาน2';
         $auth->add($meeting_report_report2);

         $meeting_report_report3 = $auth->createPermission('meeting/report/report3');
         $meeting_report_report3->description = 'รายงาน3';
         $auth->add($meeting_report_report3);

         $meeting_report_report4 = $auth->createPermission('meeting/report/report4');
         $meeting_report_report4->description = 'รายงาน4';
         $auth->add($meeting_report_report4);

         $meeting_report_report5 = $auth->createPermission('meeting/report/report5');
         $meeting_report_report5->description = 'รายงาน5';
         $auth->add($meeting_report_report5);

        // cmd-> php yii rbac/create-permission  
        // view->table-> SELECT * FROM `auth_item`
        echo 'create permission success';


    }

    public function actionCreateRole()
    {
       $auth = Yii::$app->authManager;

        $person_default_index = $auth->createPermission('personal/default/index');
        
        $person_person_index = $auth->createPermission('personal/person/index');
        $person_person_create = $auth->createPermission('personal/person/create');
        $person_person_update = $auth->createPermission('personal/person/update');
        $person_person_delete = $auth->createPermission('personal/person/delete');
        $person_person_view = $auth->createPermission('personal/person/view');

        $meeting_equipment_index = $auth->createPermission('meeting/equipment/index');
        $meeting_equipment_create = $auth->createPermission('meeting/equipment/create');
        $meeting_equipment_update = $auth->createPermission('meeting/equipment/update');
        $meeting_equipment_delete = $auth->createPermission('meeting/equipment/delete');
        $meeting_equipment_view = $auth->createPermission('meeting/equipment/view');

        $meeting_department_index = $auth->createPermission('meeting/department/index');
        $meeting_department_create = $auth->createPermission('meeting/department/create');
        $meeting_department_update = $auth->createPermission('meeting/department/update');
        $meeting_department_delete = $auth->createPermission('meeting/department/delete');
        $meeting_department_view = $auth->createPermission('meeting/department/view');

        $meeting_meeting_index = $auth->createPermission('meeting/meeting/index');
        $meeting_meeting_create = $auth->createPermission('meeting/meeting/create');
        $meeting_meeting_update = $auth->createPermission('meeting/meeting/update');
        $meeting_meeting_delete = $auth->createPermission('meeting/meeting/delete');
        $meeting_meeting_view = $auth->createPermission('meeting/meeting/view');

        $meeting_person_index = $auth->createPermission('meeting/person/index');
        $meeting_person_create = $auth->createPermission('meeting/person/create');
        $meeting_person_update = $auth->createPermission('meeting/person/update');
        $meeting_person_delete = $auth->createPermission('meeting/person/delete');
        $meeting_person_view = $auth->createPermission('meeting/person/view');

        $meeting_room_index = $auth->createPermission('meeting/room/index');
        $meeting_room_create = $auth->createPermission('meeting/room/create');
        $meeting_room_update = $auth->createPermission('meeting/room/update');
        $meeting_room_delete = $auth->createPermission('meeting/room/delete');
        $meeting_room_view = $auth->createPermission('meeting/room/view');

        $meeting_status_index = $auth->createPermission('meeting/status/index');
        $meeting_status_create = $auth->createPermission('meeting/status/create');
        $meeting_status_update = $auth->createPermission('meeting/status/update');
        $meeting_status_delete = $auth->createPermission('meeting/status/delete');
        $meeting_status_view = $auth->createPermission('meeting/status/view');

        $meeting_report_report1 = $auth->createPermission('meeting/report/report1');
        $meeting_report_report2 = $auth->createPermission('meeting/report/report2');
        $meeting_report_report3 = $auth->createPermission('meeting/report/report3');
        $meeting_report_report4 = $auth->createPermission('meeting/report/report4');
        $meeting_report_report5 = $auth->createPermission('meeting/report/report5');

       
        // user
        $user = $auth->createRole('user');
        $auth->add($user);

        // $auth->addChild($user, $person_default_index);
        // $auth->addChild($user, $person_person_index);
        // $auth->addChild($user, $person_person_view);
        // $auth->addChild($user, $meeting_equipment_index);
        // $auth->addChild($user, $meeting_equipment_view);         
        // $auth->addChild($user, $meeting_meeting_index);
        // $auth->addChild($user, $meeting_meeting_view);    
        // $auth->addChild($user, $meeting_room_index);
        // $auth->addChild($user, $meeting_room_view);
        // $auth->addChild($user, $meeting_report_report1);
        // $auth->addChild($user, $meeting_report_report2);
        // $auth->addChild($user, $meeting_report_report3);
        // $auth->addChild($user, $meeting_report_report4);
        // $auth->addChild($user, $meeting_report_report5);
       
       
        // // staff
        // $staff = $auth->createRole('staff');
        // $auth->add($staff);        

        // $auth->addChild($staff, $meeting_meeting_create);
        // $auth->addChild($staff, $user);
        
        // // admin
        // $admin = $auth->createRole('admin');
        // $auth->add($admin);

        // $auth->addChild($admin, $person_person_create);
        // $auth->addChild($admin, $person_person_update);
        // $auth->addChild($admin, $person_person_delete);

        // $auth->addChild($admin, $meeting_meeting_update);
        // $auth->addChild($admin, $meeting_meeting_delete);

        // $auth->addChild($admin, $meeting_equipment_create);
        // $auth->addChild($admin, $meeting_equipment_update);
        // $auth->addChild($admin, $meeting_equipment_delete);

        // $auth->addChild($admin, $meeting_department_index);
        // $auth->addChild($admin, $meeting_department_view);
        // $auth->addChild($admin, $meeting_department_create);
        // $auth->addChild($admin, $meeting_department_update);
        // $auth->addChild($admin, $meeting_department_delete);

        // $auth->addChild($admin, $meeting_meeting_create);
        // $auth->addChild($admin, $meeting_meeting_update);
        // $auth->addChild($admin, $meeting_meeting_delete);

        // $auth->addChild($admin, $meeting_person_index);
        // $auth->addChild($admin, $meeting_person_view);        
        // $auth->addChild($admin, $meeting_person_create);
        // $auth->addChild($admin, $meeting_person_update);
        // $auth->addChild($admin, $meeting_person_delete);

        // $auth->addChild($admin, $meeting_room_create);
        // $auth->addChild($admin, $meeting_room_update);
        // $auth->addChild($admin, $meeting_room_delete);

        // $auth->addChild($admin, $meeting_status_index);
        // $auth->addChild($admin, $meeting_status_view);
        // $auth->addChild($admin, $meeting_status_create);
        // $auth->addChild($admin, $meeting_status_update);
        // $auth->addChild($admin, $meeting_status_delete);

        // $auth->addChild($admin, $staff);

        // cmd-> php yii rbac/create-role
        // view->table-> SELECT * FROM `auth_item_child`
        echo 'create child success';

    }

}
