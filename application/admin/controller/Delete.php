<?php
/**
 * Created by PhpStorm.
 * User: ggx
 * Date: 2019/3/18
 * Time: 10:38
 */

namespace app\admin\controller;


use think\Controller;
use think\Db;
use think\Exception;
use think\Log;

class Delete extends Controller
{
    public function index(){

        if ($this->request->isAjax()){

            $parm = $this->request->param();
            $token = $parm['t'];
            $phone = is_numeric($parm['p']) && strlen($parm['p'])==11 ?$parm['p']:0;
            $token_true = 'guozao-' . date('YmdH');

            if (empty($phone) || $token_true!=$token){
                return ['code'=>0];
            }


            $uid = Db::name('user')->where(['mobile'=>$phone])->value('id');
            $order_ids = Db::name('order')->field('id')->where(['uid'=>$uid])->select();
            $order_ids = array_column($order_ids,'id');

            Db::startTrans();
            try{
                $a1 = Db::name('user')->where(['id'=>$uid])->delete();
                $a2 = Db::name('user_authinfo')->where(['uid'=>$uid])->delete();
                $a3 = Db::name('user_bankcard')->where(['uid'=>$uid])->delete();
                $a4 = Db::name('user_cardinfo')->where(['uid'=>$uid])->delete();
                $a5 = Db::name('user_info')->where(['uid'=>$uid])->delete();
                $a6 = Db::name('user_telebook')->where(['uid'=>$uid])->delete();
                $a7 = Db::name('order')->where(['uid'=>$uid])->delete();
                $a8 = Db::name('order_repay')->where(['order_id'=>['in',$order_ids]])->delete();
                $a9 = Db::name('sh_log')->where(['order_id'=>['in',$order_ids]])->delete();
                $a10 = Db::name('message')->where(['uid'=>$uid])->delete();

                Db::commit();
                return ['code'=>1];
            }catch (Exception $e){

                Db::rollback();
                return ['code'=>2];

            }

        }

        return $this->view->fetch();


    }
}