<?php
// 公共助手函数
use think\Db;

if (!function_exists('__')) {

    /**
     * 获取语言变量值
     * @param string $name 语言变量名
     * @param array $vars 动态变量值
     * @param string $lang 语言
     * @return mixed
     */
    function __($name, $vars = [], $lang = '')
    {
        if (is_numeric($name) || !$name)
            return $name;
        if (!is_array($vars)) {
            $vars = func_get_args();
            array_shift($vars);
            $lang = '';
        }
        return \think\Lang::get($name, $vars, $lang);
    }

}

if (!function_exists('format_bytes')) {

    /**
     * 将字节转换为可读文本
     * @param int $size 大小
     * @param string $delimiter 分隔符
     * @return string
     */
    function format_bytes($size, $delimiter = '')
    {
        $units = array('B', 'KB', 'MB', 'GB', 'TB', 'PB');
        for ($i = 0; $size >= 1024 && $i < 6; $i++)
            $size /= 1024;
        return round($size, 2) . $delimiter . $units[$i];
    }

}

if (!function_exists('datetime')) {

    /**
     * 将时间戳转换为日期时间
     * @param int $time 时间戳
     * @param string $format 日期时间格式
     * @return string
     */
    function datetime($time, $format = 'Y-m-d H:i:s')
    {
        $time = is_numeric($time) ? $time : strtotime($time);
        return date($format, $time);
    }

}

if (!function_exists('human_date')) {

    /**
     * 获取语义化时间
     * @param int $time 时间
     * @param int $local 本地时间
     * @return string
     */
    function human_date($time, $local = null)
    {
        return \fast\Date::human($time, $local);
    }

}

if (!function_exists('cdnurl')) {

    /**
     * 获取上传资源的CDN的地址
     * @param string $url 资源相对地址
     * @param boolean $domain 是否显示域名 或者直接传入域名
     * @return string
     */
    function cdnurl($url, $domain = false)
    {
        $url = preg_match("/^https?:\/\/(.*)/i", $url) ? $url : \think\Config::get('upload.cdnurl') . $url;
        if ($domain && !preg_match("/^(http:\/\/|https:\/\/)/i", $url)) {
            if (is_bool($domain)) {
                $public = \think\Config::get('view_replace_str.__PUBLIC__');
                $url = rtrim($public, '/') . $url;
                if (!preg_match("/^(http:\/\/|https:\/\/)/i", $url)) {
                    $url = request()->domain() . $url;
                }
            } else {
                $url = $domain . $url;
            }
        }
        return $url;
    }

}


if (!function_exists('is_really_writable')) {

    /**
     * 判断文件或文件夹是否可写
     * @param    string $file 文件或目录
     * @return    bool
     */
    function is_really_writable($file)
    {
        if (DIRECTORY_SEPARATOR === '/') {
            return is_writable($file);
        }
        if (is_dir($file)) {
            $file = rtrim($file, '/') . '/' . md5(mt_rand());
            if (($fp = @fopen($file, 'ab')) === FALSE) {
                return FALSE;
            }
            fclose($fp);
            @chmod($file, 0777);
            @unlink($file);
            return TRUE;
        } elseif (!is_file($file) OR ($fp = @fopen($file, 'ab')) === FALSE) {
            return FALSE;
        }
        fclose($fp);
        return TRUE;
    }

}

if (!function_exists('rmdirs')) {

    /**
     * 删除文件夹
     * @param string $dirname 目录
     * @param bool $withself 是否删除自身
     * @return boolean
     */
    function rmdirs($dirname, $withself = true)
    {
        if (!is_dir($dirname))
            return false;
        $files = new RecursiveIteratorIterator(
            new RecursiveDirectoryIterator($dirname, RecursiveDirectoryIterator::SKIP_DOTS), RecursiveIteratorIterator::CHILD_FIRST
        );

        foreach ($files as $fileinfo) {
            $todo = ($fileinfo->isDir() ? 'rmdir' : 'unlink');
            $todo($fileinfo->getRealPath());
        }
        if ($withself) {
            @rmdir($dirname);
        }
        return true;
    }

}

if (!function_exists('copydirs')) {

    /**
     * 复制文件夹
     * @param string $source 源文件夹
     * @param string $dest 目标文件夹
     */
    function copydirs($source, $dest)
    {
        if (!is_dir($dest)) {
            mkdir($dest, 0755, true);
        }
        foreach (
            $iterator = new RecursiveIteratorIterator(
                new RecursiveDirectoryIterator($source, RecursiveDirectoryIterator::SKIP_DOTS), RecursiveIteratorIterator::SELF_FIRST) as $item
        ) {
            if ($item->isDir()) {
                $sontDir = $dest . DS . $iterator->getSubPathName();
                if (!is_dir($sontDir)) {
                    mkdir($sontDir, 0755, true);
                }
            } else {
                copy($item, $dest . DS . $iterator->getSubPathName());
            }
        }
    }

}

if (!function_exists('mb_ucfirst')) {

    function mb_ucfirst($string)
    {
        return mb_strtoupper(mb_substr($string, 0, 1)) . mb_strtolower(mb_substr($string, 1));
    }

}

if (!function_exists('addtion')) {

    /**
     * 附加关联字段数据
     * @param array $items 数据列表
     * @param mixed $fields 渲染的来源字段
     * @return array
     */
    function addtion($items, $fields)
    {
        if (!$items || !$fields)
            return $items;
        $fieldsArr = [];
        if (!is_array($fields)) {
            $arr = explode(',', $fields);
            foreach ($arr as $k => $v) {
                $fieldsArr[$v] = ['field' => $v];
            }
        } else {
            foreach ($fields as $k => $v) {
                if (is_array($v)) {
                    $v['field'] = isset($v['field']) ? $v['field'] : $k;
                } else {
                    $v = ['field' => $v];
                }
                $fieldsArr[$v['field']] = $v;
            }
        }
        foreach ($fieldsArr as $k => &$v) {
            $v = is_array($v) ? $v : ['field' => $v];
            $v['display'] = isset($v['display']) ? $v['display'] : str_replace(['_ids', '_id'], ['_names', '_name'], $v['field']);
            $v['primary'] = isset($v['primary']) ? $v['primary'] : '';
            $v['column'] = isset($v['column']) ? $v['column'] : 'name';
            $v['model'] = isset($v['model']) ? $v['model'] : '';
            $v['table'] = isset($v['table']) ? $v['table'] : '';
            $v['name'] = isset($v['name']) ? $v['name'] : str_replace(['_ids', '_id'], '', $v['field']);
        }
        unset($v);
        $ids = [];
        $fields = array_keys($fieldsArr);
        foreach ($items as $k => $v) {
            foreach ($fields as $m => $n) {
                if (isset($v[$n])) {
                    $ids[$n] = array_merge(isset($ids[$n]) && is_array($ids[$n]) ? $ids[$n] : [], explode(',', $v[$n]));
                }
            }
        }
        $result = [];
        foreach ($fieldsArr as $k => $v) {
            if ($v['model']) {
                $model = new $v['model'];
            } else {
                $model = $v['name'] ? \think\Db::name($v['name']) : \think\Db::table($v['table']);
            }
            $primary = $v['primary'] ? $v['primary'] : $model->getPk();
            $result[$v['field']] = $model->where($primary, 'in', $ids[$v['field']])->column("{$primary},{$v['column']}");
        }

        foreach ($items as $k => &$v) {
            foreach ($fields as $m => $n) {
                if (isset($v[$n])) {
                    $curr = array_flip(explode(',', $v[$n]));

                    $v[$fieldsArr[$n]['display']] = implode(',', array_intersect_key($result[$n], $curr));
                }
            }
        }
        return $items;
    }

}

if (!function_exists('var_export_short')) {

    /**
     * 返回打印数组结构
     * @param string $var 数组
     * @param string $indent 缩进字符
     * @return string
     */
    function var_export_short($var, $indent = "")
    {
        switch (gettype($var)) {
            case "string":
                return '"' . addcslashes($var, "\\\$\"\r\n\t\v\f") . '"';
            case "array":
                $indexed = array_keys($var) === range(0, count($var) - 1);
                $r = [];
                foreach ($var as $key => $value) {
                    $r[] = "$indent    "
                        . ($indexed ? "" : var_export_short($key) . " => ")
                        . var_export_short($value, "$indent    ");
                }
                return "[\n" . implode(",\n", $r) . "\n" . $indent . "]";
            case "boolean":
                return $var ? "TRUE" : "FALSE";
            default:
                return var_export($var, TRUE);
        }
    }

    function coast($type, $id, $classify)
    {
        //$type 收费场景
        //$classify 1  用户行为 2 渠道行为
        //$id $classify为1时： 用户id  $classify为2时 渠道id
        if (empty($type) || empty($id) || empty($classify)) {
            return false;
        }
        if (!coastAmount($type)) {//没有对应场景 会返回 0
            return false;
        }
        if (1 != $classify && 2 != $classify) {
            return false;
        }
        $data['type'] = $type;
        $data['create_time'] = time();
        $data['amount'] = coastAmount($type);
        if (1 == $classify) {//用户行为
            $data['user_id'] = $id;
            $where['u.id'] = $id;
            /*$channel = Db::name("user")->alias("u")
                      ->field("u.id uid,c.id")
                      ->join("d_channel c", "c.channel_code = u.channel_code", "left")
                      ->where($where)
                      ->find();
            if(empty($channel['uid'])){
                return false;
            }
            $data['mem_id'] = empty($channel['id'])?0:$channel['id'];
            */
        } else {//后台操作
            $data['user_id'] = 0;
            /*$admin = Db::name("admin")->where(array('id'=>$id))->find();
            if(empty($admin)){
                return false;
            }
            $data['mem_id'] = $id;
            */
        }
        $data['mem_id'] = 1;
        Db::name('coast')->insert($data);
        if (!empty($data['mem_id'])) {
            user_account($data['amount'], $data['mem_id']);
        }
    }

    function coastAmount($key)
    {
        $re['1'] = '0.05';
        $re['2'] = '0.05';
        $re['3'] = '0.05';
        $re['4'] = '0.05';
        $re['5'] = '0.1';
        $re['6'] = '0.1';
        $re['7'] = '0.1';
        $re['8'] = '0.1';
        $re['9'] = '1.5';
        $re['10'] = '1.5';
        $re['11'] = '4.5';
        $re['12'] = '0.5';
        $re['13'] = '0.5';
        $re['14'] = '0.5';
        $re['15'] = '0.5';
        $re['16'] = '0.5';
        $re['17'] = '1.5';

        return empty($re[$key]) ? 0 : $re[$key];
    }

    function user_account($amount, $user_id)
    {
        $where['mem_id'] = $user_id;
        $user_account = Db::name('mem_account')->where($where)->find();
        if (empty($user_account)) {
            $data['createtime'] = time();
            $data['balance'] = 0 - $amount;
            $data['mem_id'] = $user_id;
            Db::name('mem_account')->insert($data);
        } else {
            $data['balance'] = $user_account['balance'] - $amount;
            Db::name('mem_account')->where($where)->update($data);
        }
    }

}


//http请求
if (!function_exists('http')){
    /**
     * 发送HTTP请求方法
     * @param string $url 请求URL
     * @param array $params 请求参数
     * @param string $method 请求方法GET/POST
     * @param array $header 一维数组，如：['Content-type: application/json; charset=utf-8']
     * @return array|string $data 响应数据
     */
    function http($url, $params=array(), $method = 'GET', $header = array(), $multi = false, $timeout=15){
        $opts = array(
            CURLOPT_TIMEOUT => $timeout,
            CURLOPT_RETURNTRANSFER => 1,
            CURLOPT_SSL_VERIFYPEER => false,
            CURLOPT_SSL_VERIFYHOST => false,
            CURLOPT_HTTPHEADER => $header
        );
        /* 根据请求类型设置特定参数 */
        switch(strtoupper($method)){
            case 'GET':
                $opts[CURLOPT_URL] = $url . '?' . http_build_query($params);
                break;
            case 'POST':
                //判断是否传输文件
                $params = $multi ? $params : http_build_query($params);
                $opts[CURLOPT_URL] = $url;
                $opts[CURLOPT_POST] = 1;
                $opts[CURLOPT_POSTFIELDS] = $params;
                break;
            default:
                throw new Exception('不支持的请求方式！');
        }
        /* 初始化并执行curl请求 */
        $ch = curl_init();
        curl_setopt_array($ch, $opts);
        curl_setopt($ch, CURLOPT_BINARYTRANSFER, true) ;
        curl_setopt($ch, CURLOPT_ENCODING, 'gzip,deflate');
        $data = curl_exec($ch);
        $error = curl_error($ch);
        curl_close($ch);
        $arr['type'] = 'http_no_secure';
        $arr['url']=$url;
        $arr['data']=json_encode($params);
        $arr['method']=$method;
        $arr['header']=json_encode($header);
        $arr['multi']=(int)$multi;
        $arr['returndata']=$data;

        if($error){
            $arr['error'] = $error;
            // throw new Exception('请求发生错误：' . $error);
            extlog(http_log_arrtostr($arr),'http');//记录日志

            return false;
        }
        extlog(http_log_arrtostr($arr),'http');//记录日志

        return $data;
    }

    function http_log_arrtostr($arr){
        $logstr="\r\n-----------------------------------------\r\n";
        foreach ($arr as $k=>$v){
            if (is_array($v)){
                $v=json_encode($v);
            }
            $logstr.='    |'.$k.'='.$v."\r\n";
        }
        $logstr.= "----------------------------------------";
        return $logstr;
    }

    /**
     *
     * @param unknown $arr  要记录的日志
     * @param string $destination 日志目录，包括日志文件地址
     * @param $type  哪一个日志
     * @param string $extra
     */
    function extlog($arr1=array(),$file=null,$destination='',$extra='') {
        $request = Request();
        $model_name = $request->module();
        $arr = [];
        $file = $file ?? $model_name;
        $arr['url'] = $request->url(true);
        $arr['header'] = array($request->header('PHPSESSID')??time(),$request->header('accept')??"");
        $arr['type'] =  $request->method();
        $arr['param'] = $request->param();
        $arr['return'] = $arr1;
        $arr ['time'] = date('Y-m-d H:i:s');
        $arr ['ip'] = $request->ip();
        $arr['visibletype']	= $_SERVER['HTTP_USER_AGENT'];
        $arr = $file!='exception'?$arr:['error'=>$arr1];
        $type=3;
        if(empty($destination)){
            $destination = RUNTIME_PATH.'ExtLog'.DIRECTORY_SEPARATOR.$file.DIRECTORY_SEPARATOR.$file.'_'.date('ymd').'.log';//echo $destination;
        }
        // 自动创建日志目录
        $log_dir = dirname($destination);
        !is_dir($log_dir) && mkdir($log_dir, 0755, true);
        //检测日志文件大小，超过配置大小则备份日志文件重新生成
        $file_size = Config('log_file_size')??104857600;
        if(is_file($destination) && $file_size <= filesize($destination)){
            $refile = $file.'_'.date('ymd')."_".date('Hi').'.log';
            rename($destination,dirname($destination).DIRECTORY_SEPARATOR.$refile);
        }
        $logstr=null;
        foreach ($arr as $k=>$v){
            if (is_array($v)){
                $v=json_encode($v);
            }
            $logstr.=$k.'='.$v."\r\n";
        }
        //$logstr=json_encode($arr)."\r\n";
        $logstr.="**************************************************************************************** \r\n";
        error_log($logstr."\r\n", $type,$destination ,$extra);
        $logstr .= null;
    }


}


