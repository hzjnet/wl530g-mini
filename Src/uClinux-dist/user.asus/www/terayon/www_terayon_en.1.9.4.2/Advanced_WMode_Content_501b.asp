<head>
<title>ZVMODELVZ Web Manager</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" type="text/css" href="style.css" media="screen"></link>
<script language="JavaScript" type="text/javascript" src="overlib.js"></script>
<script language="JavaScript" type="text/javascript" src="general.js"></script>
</head>  
<div id="overDiv" style="position:absolute; visibility:hidden; z-index:1000;"></div>    
<body onLoad="load_body()" onunLoad="return unload_body();">
<form method="GET" name="form" action="apply.cgi">
<!-- Table for the conntent page -->	    
<table width="666" border="0" cellpadding="0" cellspacing="0">     	      
    	
<input type="hidden" name="current_page" value="Advanced_WMode_Content.asp"><input type="hidden" name="next_page" value="Advanced_ACL_Content.asp"><input type="hidden" name="next_host" value=""><input type="hidden" name="sid_list" value="WLANConfig11a;WLANConfig11b;"><input type="hidden" name="group_id" value=""><input type="hidden" name="modified" value="0"><input type="hidden" name="action_mode" value=""><input type="hidden" name="first_time" value=""><input type="hidden" name="action_script" value="">
<tr>
<td>
<table width="600" border="0" cellpadding="0" cellspacing="0" bordercolor="E0E0E0">
<tr class="content_header_tr">
<td class="content_header_td_title" colspan="2">Wireless - Bridge</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<table width="600" border="0" cellpadding="0" cellspacing="0" bordercolor="E0E0E0">
<tr>
<td class="content_desc_td" colspan="2">Wireless bridge (also known as Wireless Distribution System or WDS) function allows you to connect to one or many APs through wireless.
</td>
</tr>
<tr>
<td class="content_header_td" onMouseOver="return overlib('Selecting AP Only disables Wireless Bridge functionality. Selecting WDS Only disables local wireless station association. Selecting Hybrid enables Wireless bridge functionality and wireless stations will be able to associate to the AP.', LEFT);" onMouseOut="return nd();">AP Mode:
           </td><td class="content_input_td"><select name="" class="content_input_fd" onChange="return change_common(this, 'WLANConfig11b', '')"><option class="content_input_fd" value="0" <% nvram_match_x("WLANConfig11b","", "0","selected"); %>>AP Only</option><option class="content_input_fd" value="2" <% nvram_match_x("WLANConfig11b","", "2","selected"); %>>Hybrid</option></select></td>
</tr>
<tr>
<td class="content_header_td" onMouseOver="return overlib('Select the operating radio channel', LEFT);" onMouseOut="return nd();">Channel:
           </td><td class="content_input_td"><select name="" class="content_input_fd" onChange="return change_common(this, 'WLANConfig11b', '')">   
<% select_channel("WLANConfig11b"); %>
                </select><input type="hidden" maxlength="15" size="15" name="x_RegulatoryDomain" value="<% nvram_get_x("Regulatory","x_RegulatoryDomain"); %>" readonly="1"></td>
</tr>
<tr>
<td class="content_header_td" onMouseOver="return overlib('Selecting Yes connects ZVMODELVZ to other APs listed in Remote Bridge List.', LEFT);" onMouseOut="return nd();">Connect to APs in Remote Bridge List?
           </td><td class="content_input_td"><input type="radio" value="1" name="" class="content_input_fd" onClick="return change_common_radio(this, 'WLANConfig11b', '', '1')" <% nvram_match_x("WLANConfig11b","", "1", "checked"); %>>Yes</input><input type="radio" value="0" name="" class="content_input_fd" onClick="return change_common_radio(this, 'WLANConfig11b', '', '0')" <% nvram_match_x("WLANConfig11b","", "0", "checked"); %>>No</input></td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<table width="600" border="0" cellpadding="0" cellspacing="0" bordercolor="E0E0E0">
<tr class="content_list_header_tr">
<td class="content_list_header_td" width="60%" id="RBRList">Remote Bridge List
         <input type="hidden" name="RBRListCount_0" value="<% nvram_get_x("WLANConfig11b", "RBRListCount"); %>" readonly="1"></td><td width="10%">
<div align="center">
<input class="inputSubmit" type="submit" onMouseOut="buttonOut(this)" onMouseOver="buttonOver(this)" onClick="return markGroup(this, 'RBRList', 8, ' Add ');" name="RBRList" value="Add" size="12">
</div>
</td><td width="10%">
<div align="center">
<input class="inputSubmit" type="submit" onMouseOut="buttonOut(this)" onMouseOver="buttonOver(this)" onClick="return markGroup(this, 'RBRList', 8, ' Del ');" name="RBRList" value="Delete" size="12">
</div>
</td><td width="5%"></td>
</tr>
<table class="content_list_table" width="640" border="0" cellspacing="0" cellpadding="0">
<tr>
<td colspan="3" height="10"></td>
</tr>
<tr>
<td colspan="3">
<div align="center">
<table class="content_list_value_table" border="1" cellspacing="0" cellpadding="0">
<tr>
<td></td><td class="content_list_field_header_td" colspan="">MAC Address	                
           	        </td><td></td>
</tr>
<tr>
<td></td><td class="content_list_input_td" colspan=""><input type="text" maxlength="12" class="content_input_list_fd" size="32" name="_0" onKeyPress="return is_hwaddr()"></td>
</tr>
<tr>
<td></td><td colspan="10"><select size="8" name="RBRList_s" multiple="true" style="font-family: 'fixedsys'; font-size: '8pt'">
<% nvram_get_table_x("WLANConfig11b","RBRList"); %>
</select></td>
</tr>
</table>
</div>
</td>
</tr>
<tr>
<td colspan="3" height="10"></td>
</tr>
</table>
</table>
</td>
</tr>
<tr>
<td>		
<table width="600" border="0" cellpadding="0" cellspacing="0" bordercolor="FFFFFF">
<tr bgcolor="#FFFFFF"><td colspan="3"><font face="arial" size="2"><b>&nbsp</b></font></td></tr>
<tr bgcolor="#FFFFFF">  
   <td id ="Confirm" height="25" width="34%">  
   <div align="center"><font face="Arial"> <input class=inputSubmit onMouseOut=buttonOut(this) onMouseOver="buttonOver(this)" onClick="onSubmitCtrl(this, ' Restore ')" type="submit" value=" Restore " name="action"></font></div> 
   </td>  
   <td height="25" width="33%">  
   <div align="center"><font face="Arial"> <input class=inputSubmit onMouseOut=buttonOut(this) onMouseOver="buttonOver(this)" onClick="onSubmitCtrl(this, ' Finish ')" type="submit" value=" Finish " name="action"></font></div> 
   </td>
   <td height="25" width="33%">  
   <div align="center"><font face="Arial"> <input class=inputSubmit onMouseOut=buttonOut(this) onMouseOver="buttonOver(this)" onClick="onSubmitCtrl(this, ' Apply ')" type="submit" value=" Apply " name="action"></font></div> 
   </td>    
</tr>
</table>
</td>
</tr>

<tr>
<td>
<table width="600" border="0" cellpadding="0" cellspacing="0" bordercolor="FFFFFF">
<tr>
    <td colspan="2" width="600" height="25" bgcolor="#FFFFFF"></td> 
</tr>                   
<tr bgcolor="#FFFFFF">
    <td class="content_header_td_15" align="left">Restore: </td>
    <td class="content_input_td_padding" align="left">Clear the above settings and restore the settings in effect.</td>
</tr>
<tr bgcolor="#FFFFFF">
    <td class="content_header_td_15" align="left">Finish: </td>
    <td class="content_input_td_padding" align="left">Confirm all settings and restart ZVMODELVZ now.</td>
</tr>
<tr bgcolor="#FFFFFF">
    <td class="content_header_td_15" align="left">Apply: </td>
    <td class="content_input_td_padding" align="left">Confirm above settings and continue.</td>
</tr>
</table>
</td>
</tr>

</table>
</form>
</body>
