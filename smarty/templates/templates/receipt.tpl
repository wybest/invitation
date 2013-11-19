<table align="center" border="1" width="100%">
    <tr>
      <td align="center">姓名</td>
      <td align="center">是否参加</td>
      <td align="center">回复时间</td>
      <td align="center">详情</td>
    </tr>
{#section name=customer loop=$shuju_array #}
      <tr>
        <td align="center" ><a href="">{#$shuju_array[customer]->name#}</a></td>
        <td align="center" >{#$shuju_array[customer]->pnum#}</td>
        <td align="center">{#$shuju_array[customer]->time#}</td>
        <td><a href="receiptDetail.php?id={#$shuju_array[customer]->id#}">详情</a></td>
      </tr>
{#/section#}
  </table>
  <br>
  <table border="0" width="100%">
    <tr>
      <td><a href="receipt.php?page_nm=1">第一页</a></td>
      <td><a href="receipt.php?page_nm={#$up#}">前一页</a></td>
      <td><a href="receipt.php?page_nm={#$next#}">下一个</a></td>
      <td><a href="receipt.php?page_nm={#$end#}">最后一页</a></td> 
      <td>第{#$page#}页    (总共 {#$count#}条,共{#$end#}页)</td>
    </tr>
  </table>
