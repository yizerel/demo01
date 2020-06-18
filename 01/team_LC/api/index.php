<?php
	header("Access-Control-Allow-Origin:*");
	include("include/config.php");
	$postData = file_get_contents('php://input', true);
	$obj=json_decode($postData);
	//导航
	$nav_sql="SELECT * FROM nav";
	$nav_res=get_all($nav_sql);
	//新闻列表
	$news_arr=array();
	for($i=1;$i<=6;$i++){
		$news_sql="SELECT * FROM news WHERE n_key=$i";
		$news_res=get_all($news_sql);
		$news_arr[$i]=$news_res;
	}
	//新闻详细
	$news_id = isset($obj->news_id)?$obj->news_id:1;
	$news_detail_sql="SELECT * FROM news WHERE n_id=$news_id";
	$news_detail_res=get_one($news_detail_sql);
	//二级导航
	$nav_two="SELECT l_id,l_name1 FROM list";
	$nav_two_res=get_all($nav_two);
	//房子类型
	$cp_id = isset($obj->cp_id)?$obj->cp_id:1;
	$cp_detail="SELECT * FROM list WHERE l_id=$cp_id";
	$cp_detail_res=get_one($cp_detail);
	//关于我们
	$about_sql="SELECT * FROM about";
	$about_res=get_all($about_sql);
	//户型
	$hxmb_sql="SELECT * FROM hxmb";
	$hxmb_res=get_all($hxmb_sql);
	//户型选择
	$h_id = isset($obj->h_id)?$obj->h_id:1;
	$hx_detail="SELECT * FROM hxmb WHERE h_id=$h_id";
	$hx_detail_res=get_one($hx_detail);
	//配套列表
	$peitao_sql="SELECT * FROM peitao";
	$peitao_res=get_all($peitao_sql);
	//配套详细
	$p_id = isset($obj->p_id)?$obj->p_id:1;
	$peitao_detail="SELECT * FROM peitao WHERE p_id=$p_id";
	$peitao_detail_res=get_one($peitao_detail);
	$data=array(
		"nav"=>$nav_res,
		"nav_two"=>$nav_two_res,
		"news"=>$news_arr,
		"news_detail"=>$news_detail_res,
		"id"=>$news_id,
		"cp_detail_res"=>$cp_detail_res,
		"about"=>$about_res,
		"hxmb"=>$hxmb_res,
		"hx_detail_res"=>$hx_detail_res,
		"peitao"=>$peitao_res,
		"peitao_detail_res"=>$peitao_detail_res,
	);
	
	echo json_encode($data);
?>