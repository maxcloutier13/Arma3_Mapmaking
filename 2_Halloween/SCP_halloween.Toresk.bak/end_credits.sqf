_victim_text = "";
{
 _victim_text = _victim_text + format ["<t size='1' >%1<br/></t>", _x];
} forEach cgqc_victims;
_text = format ["
<t size='2' ><br/><br/><br/>La Croisade du Cauchemar<br/></t>
<t size='1' >par Maj.Cloutier</t>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<t size='2' ><br/><br/><br/>Victimes<br/></t>
%1
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<t size='2' ><br/><br/><br/>Thanks for showing up ;o)<br/></t>
", _victim_text];
[_text, 0, -1, 22, 6, -5] spawn BIS_fnc_dynamicText;

sleep 30;
cgqc_credit_done = true;