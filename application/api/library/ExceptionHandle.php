<?php

namespace app\api\library;

use Exception;
use think\exception\Handle;

/**
 * 自定义API模块的错误显示
 */
class ExceptionHandle extends Handle
{

    public function render(Exception $e)
    {
        // 在生产环境下返回code信息
        if (!\think\Config::get('app_debug'))
        {
            $statuscode = $code = 500;
            $msg = 'An error occurred';
            // 验证异常
            if ($e instanceof \think\exception\ValidateException)
            {
                $code = 0;
                $statuscode = 200;
                $msg = $e->getError();
            }
            // Http异常
            if ($e instanceof \think\exception\HttpException)
            {
                $statuscode = $code = $e->getStatusCode();
            }
            $result = ['code' => $code, 'msg' => $msg, 'time' => time(), 'data' => null];
            $result_log = ['code' => $code, 'msg' => $msg, 'time' => time(), 'data' => $e->getMessage()];
            config('is_open_extlog') && extlog($result_log);
            return json($result, $statuscode);
        }

        //其它此交由系统处理
        return parent::render($e);
    }

}
