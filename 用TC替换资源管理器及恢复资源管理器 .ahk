;http://blog.csdn.net/u010528745/article/details/41759463
;date:2014-07-06  
;��TC�滻��Դ���������ָ���Դ������  
;��Ҫ����http://blog.xiazhiri.com/tags/totalcmd/�����£�  
;�ָ���http://qing.blog.sina.com.cn/2002017477/77545cc533002ie4.html�����¼����Ҽ���explorer��  
;����ο���http://blog.csdn.net/lord_is_layuping/article/details/7435989������  
RegRead, IsExp, HKEY_LOCAL_MACHINE, SOFTWARE\Classes\Folder\shell\open\command, DelegateExecute  
If(IsExp="{11dbb47c-a525-400b-9e80-a54615a090c0}")  
{  
RegDelete HKEY_LOCAL_MACHINE, SOFTWARE\Classes\Folder\shell\open\command, DelegateExecute  
RegWrite, REG_EXPAND_SZ, HKEY_LOCAL_MACHINE, SOFTWARE\Classes\Folder\shell\open\command, , `"D:\Program Files to Portable type\Total Commander 9.0a Final\totalcmd.exe`" /R=`"`%1`"  
RegWrite, REG_EXPAND_SZ,HKEY_LOCAL_MACHINE, SOFTWARE\Classes\Folder\shell\openwithExplorer, , ��Explorer��(& )
;��һ���ƺ����п���  
;RegWrite, REG_EXPAND_SZ,HKEY_LOCAL_MACHINE, SOFTWARE\Classes\Folder\shell\openwithExplorer, MultiSelectModel, Document  
RegWrite, REG_EXPAND_SZ,HKEY_LOCAL_MACHINE, SOFTWARE\Classes\Folder\shell\openwithExplorer\command, MultiSelectModel, Document  
RegWrite, REG_EXPAND_SZ,HKEY_LOCAL_MACHINE, SOFTWARE\Classes\Folder\shell\openwithExplorer\command, , `"%SystemRoot%\explorer.exe`" `"`%1`"  
RegWrite, REG_EXPAND_SZ,HKEY_LOCAL_MACHINE, SOFTWARE\Classes\Folder\shell\openwithExplorer\command, EelegateExecute, {11dbb47c-a525-400b-9e80-a54615a090c0}  
TrayTip,,�л�TotalCommaderΪĬ���ļ�������,2000  
Sleep ,1500  
}  
Else  
{  
RegWrite, REG_EXPAND_SZ, HKEY_LOCAL_MACHINE, SOFTWARE\Classes\Folder\shell\open\command, DelegateExecute, {11dbb47c-a525-400b-9e80-a54615a090c0}  
RegWrite, REG_EXPAND_SZ, HKEY_LOCAL_MACHINE, SOFTWARE\Classes\Folder\shell\open\command, , `%SystemRoot`%\Explorer.exe  
RegDelete HKEY_LOCAL_MACHINE, SOFTWARE\Classes\Folder\shell\openwithExplorer  
TrayTip,,�ָ�ExplorerΪĬ���ļ�������,2000  
Sleep ,1500  
}  