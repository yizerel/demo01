<?php
	//公共函数库
	//打印函数
	function p($data){
		echo '<pre>';
		print_r($data);
		echo '</pre>';
		die;
	}
	//跳转函数
	//参数$msg,提醒的语言
	//参数$url,跳转到的页面,默认为空
	function show_msg($msg,$url=NULL){
		if($url){//如果有跳转到的页面,说明执行成功
			echo "<script>alert('".$msg."');location.href='".$url."';</script>";
		}else{//没有传第二个参数,说明执行失败
			echo "<script>alert('".$msg."');window.history.go(-1);</script>";
		}
		die;
	}
	//查询多条
	//$sql需要执行的sql语句
	function get_all($sql){
		global $conn;//设置$conn为全局变量
		$res=mysqli_query($conn,$sql);
		$data=array();//定义一个空数组用来存储数据
		if($res && mysqli_num_rows($res)>0){
			while($arr=mysqli_fetch_assoc($res)){
				$data[]=$arr;
			}
		}
		return $data;
	}
	//查询单条
	//$sql需要执行的sql语句
	function get_one($sql){
		global $conn;//设置$conn为全局变量
		$res=mysqli_query($conn,$sql);
		$data=array();//定义一个空数组用来存储数据
		//查询一条数据不需要while循环,也不需要二维数组
		if($res && mysqli_num_rows($res)>0){
			$data=mysqli_fetch_assoc($res);
		}
		return $data;
	}
	//添加函数
	//参数$tablename表名
	//参数$data,接收数据的数组,键值的字段名,值是接收的数据
	function add($tablename,$data){
		global $conn;//设置$conn为全局变量
		$sql="INSERT INTO `$tablename` ";
		//array_keys获取键值并另外生成一个索引数组
		$sql.="(`".implode('`,`',array_keys($data))."`)VALUES";
		$sql.="('".implode("','",$data)."')";
		$res=mysqli_query($conn,$sql);
		return $res;
	}
	//编辑函数
	//参数$tablename,表名
	//参数$data,接收数据的数组,键值的字段名,值是接收的数据
	//参数$conditions,条件
	function edit($tablename,$data,$conditions){
		global $conn;//设置$conn为全局变量
		$sql="UPDATE `$tablename` SET ";
		foreach($data as $k=>$v){
			$sql.="`$k`='$v',";
		}
		$sql=rtrim($sql,',');//清除最右侧的逗号
		$sql.=" WHERE $conditions";
		//echo $sql;die;
		$res=mysqli_query($conn,$sql);
		return $res;
	}
	//删除函数
	//参数$tablename,表名
	//参数$conditions,条件
	function del($tablename,$conditions){
		global $conn;//设置$conn为全局变量
		$sql="DELETE FROM `$tablename` WHERE $conditions";
		$res=mysqli_query($conn,$sql);
		return $res;
	}
	/**
	 * 
	 * 字符截取
	 * @param string $string  需要截取的字符串
	 * @param int 	 $start	  截取的开始位置
	 * @param int 	 $length  截取的长度
	 * @param string $charset 编码
	 * @param string $dot	  如果截取的长度小于总长度就加这个字符
	 */
	function str_cut(&$string, $start, $length, $charset = "utf-8", $dot = '...') {
		if(function_exists('mb_substr')) {
			if(mb_strlen($string, $charset) > $length) {
				return mb_substr ($string, $start, $length, $charset) . $dot;
			}
			return mb_substr ($string, $start, $length, $charset);
		}else if(function_exists('iconv_substr')) {
			if(iconv_strlen($string, $charset) > $length) {
				return iconv_substr($string, $start, $length, $charset) . $dot;
			}
			return iconv_substr($string, $start, $length, $charset);
		}
		$charset = strtolower($charset);
		switch ($charset) {
			case "utf-8" :
				preg_match_all("/[\x01-\x7f]|[\xc2-\xdf][\x80-\xbf]|\xe0[\xa0-\xbf][\x80-\xbf]|[\xe1-\xef][\x80-\xbf][\x80-\xbf]|\xf0[\x90-\xbf][\x80-\xbf][\x80-\xbf]|[\xf1-\xf7][\x80-\xbf][\x80-\xbf][\x80-\xbf]/", $string, $ar);
				if(func_num_args() >= 3) {
					if (count($ar[0]) > $length) {
						return join("", array_slice($ar[0], $start, $length)) . $dot;
					}
					return join("", array_slice($ar[0], $start, $length));
				} else {
					return join("", array_slice($ar[0], $start));
				}
				break;
			default:
				$start = $start * 2;
				$length   = $length * 2;
				$strlen = strlen($string);
				for ( $i = 0; $i < $strlen; $i++ ) {
					if ( $i >= $start && $i < ( $start + $length ) ) {
						if ( ord(substr($string, $i, 1)) > 129 ) $tmpstr .= substr($string, $i, 2);
						else $tmpstr .= substr($string, $i, 1);
					}
					if ( ord(substr($string, $i, 1)) > 129 ) $i++;
				}
				if ( strlen($tmpstr) < $strlen ) $tmpstr .= $dot;
				
				return $tmpstr;
		}
	}
	//图片上传的函数
	/*
	$name,input框的name值
	$type,上传图片的类型
	$size,上传图片的大小
	$upload,上传的图片保存的目录
	*/
	function upload($name,$type=array('jpg','jpeg','png','gif'),$size=1048576,$upload='../upload'){
		//1、判断错误值
		$error=$_FILES[$name]['error'];
		switch($error){
			case 1:
			return '上传大小不能超过upload_max_filesize设置的值';
			break;
			case 2:
			return '上传大小不能超过MAX_FILE_SIZE设置的值';
			break;
			case 3:
			return '图片上传不完整';
			break;
			case 4:
			return '没有选择图片';
			break;
		}
		//2、判断文件的类型
		$pre=pathinfo($_FILES[$name]['name'],PATHINFO_EXTENSION);
		if(!in_array($pre,$type)){//后缀没有在$type里面出现
			return '上传的图片类型错误';
		}
		//3、再次限制图片大小
		$s=$_FILES[$name]['size'];
		if($s>$size){
			return '图片过大,请压缩后上传';
		}
		//4、保存图片
		//首先设置好保存之后图片的名称
		$file=date('YmdHis',time()).mt_rand(1000,9999).mt_rand(1000,9999).'.'.$pre;
		if(is_uploaded_file($_FILES[$name]['tmp_name'])){
		//先判断图片有没有上传到服务器的临时文件夹
			move_uploaded_file($_FILES[$name]['tmp_name'],$upload.'/'.$file);
			return '图片上传成功,'.$file;
		}else{
			return '图片上传错误';
		}
	}
	//缩略图函数
	/*
		参数$imgsrc,原图的路径
		参数$i,尺寸缩小的倍数
		参数$upload,小图保存路径
	*/
	function thumb($imgsrc,$i=10,$upload='../thumb'){
		//1、打开大图
		//getimagesize()可以获取图片的相关信息
		$imginfo=getimagesize($imgsrc);
		//print_r($imginfo);
		$fa_w=$imginfo[0];//大图的宽
		$fa_h=$imginfo[1];//大图的高
		$fa_type=$imginfo[2];//大图的类型,不同的类型打开的方法不一样
		//1gif 2jpg 3png
		switch($fa_type){
			case 1:
			$fa_res=imagecreatefromgif($imgsrc);
			break;
			case 2:
			$fa_res=imagecreatefromjpeg($imgsrc);
			break;
			case 3:
			$fa_res=imagecreatefrompng($imgsrc);
			break;
		}
		//2、新建小图
		$son_w=ceil($fa_w/$i);//小图的宽
		$son_h=ceil($fa_h/$i);//小图的高
		$son_res=imagecreatetruecolor($son_w,$son_h);
		//3、复制大图到小图并调整尺寸
		imagecopyresized($son_res,$fa_res,0,0,0,0,$son_w,$son_h,$fa_w,$fa_h);
		/*
		参数1,小图的资源变量
		参数2,大图的资源变量
		参数3和4,放到小图位置的左上角坐标
		参数5和6,大图和参数3,4重合的坐标
		参数7和8,小图的宽和高
		参数9和10,大图的宽和高
		*/
		//4、保存小图
		$pre=pathinfo($imgsrc,PATHINFO_EXTENSION);//小图后缀和大图一样
		$imgname=pathinfo($imgsrc,PATHINFO_FILENAME);//拿到大图的图片名
		//定义小图的完整名称
		$filename=$imgname.'_min.'.$pre;
		$thumb=$upload.'/'.$filename;
		//按照类型分不同的方法保存小图1gif 2jpg 3png
		switch($fa_type){
			case 1:
			imagegif($son_res,$thumb);
			break;
			case 2:
			imagejpeg($son_res,$thumb);
			break;
			case 3:
			imagepng($son_res,$thumb);
			break;
		}
		//返回小图的图片名
		return $filename;
	}
	
?>