--insert into [dbo].[TBL_PAGE] values('YoungPeople.html','',1,0,1)
--insert into TBL_RSECTION values('Container_YoungPeople','Contenedor de Jovenes',1,1)
--insert into TBL_TSECTION_PAGE values(30005,30004)

---


declare @cot_nid bigint
--insert into TBL_CONTENT_TYPE values('', '','',1)
--set @cot_nid = scope_identity()
--insert into TBL_RVARIABLE values('TEXT_','','',1,1,null,null,@cot_nid)

DELETE FROM TBL_RVARIABLE WHERE VAR_NID > 37475
DELETE FROM TBL_CONTENT WHERE CON_NID > 68958
DELETE FROM TBL_CONTENT_TYPE WHERE COT_NID > 59580


insert into TBL_CONTENT_TYPE values('div_containerYoungPeople', '','
<div id="dvMain" class="container">
    <div class="row">
	[?div1_div_containerYoungPeople]
	[?div2_div_containerYoungPeople]
	</div>
</div>
',1)

insert into TBL_CONTENT_TYPE values('div1_div_containerYoungPeople','','
  <div class="col-sm-2">
	[?href1_div1_div_containerYoungPeople]
	[?subDiv1_div1_div_containerYoungPeople]
  </div>

',1)



insert into TBL_CONTENT_TYPE values('href1_div1_div_containerYoungPeople','','
 <a href="[@TEXT_href1_div1_div_containerYoungPeople]"><span>[@TEXT_texto1_href1_div1_div_containerYoungPeople]</span></a>
',1)


set @cot_nid = scope_identity()
insert into TBL_RVARIABLE values('TEXT_href1_div1_div_containerYoungPeople','','../Page/ContactUs.html',1,1,null,null,@cot_nid)
insert into TBL_RVARIABLE values('TEXT_texto1_href1_div1_div_containerYoungPeople','','Contactanos',1,1,null,null,@cot_nid)


insert into TBL_CONTENT_TYPE values('subDiv1_div1_div_containerYoungPeople','','
<div class="panel panel-primary">
    [?pnlHeading_subDiv1_div1_div_containerYoungPeople]
	[?pnlBody_subDiv1_div1_div_containerYoungPeople]
</div>
',1)

insert into TBL_CONTENT_TYPE values('pnlHeading_subDiv1_div1_div_containerYoungPeople','','
<div class="panel-heading">
       [?texto1_pnlHeading_subDiv1_div1_div_containerYoungPeople]
    </div>
',1)

insert into TBL_CONTENT_TYPE values('texto1_pnlHeading_subDiv1_div1_div_containerYoungPeople','','
 <h3 class="panel-title">[@TEXT_texto1_pnlHeading_subDiv1_div1_div_containerYoungPeople]</h3>
',1)
set @cot_nid = scope_identity()
insert into TBL_RVARIABLE values('TEXT_texto1_pnlHeading_subDiv1_div1_div_containerYoungPeople','','Rankig Juegos',1,1,null,null,@cot_nid)


insert into TBL_CONTENT_TYPE values('pnlBody_subDiv1_div1_div_containerYoungPeople','','
<div class="panel-body">
        [?ul1_pnlBody_subDiv1_div1_div_containerYoungPeople]
    </div>
',1)

insert into TBL_CONTENT_TYPE values('ul1_pnlBody_subDiv1_div1_div_containerYoungPeople','','<ul id="listPuntaje"></ul>',1)


insert into TBL_CONTENT_TYPE values('div2_div_containerYoungPeople','','<div class="col-sm-10">
	<div class="panel panel-primary">
		[?pnlHeading_div2_div_containerYoungPeople]
		[?pnlBody_div2_div_containerYoungPeople]
	</div>
</div>',1)


insert into TBL_CONTENT_TYPE values('pnlHeading_div2_div_containerYoungPeople','',' <div class="panel-heading">

</div>',1)
insert into TBL_CONTENT_TYPE values('pnlBody_div2_div_containerYoungPeople','','
<div class="panel-body">
	<ul class="nav nav-tabs cssTabs">
		<li class="active"><a data-toggle="tab" href="#1">Juegos</a></li>
		<li><a data-toggle="tab" href="#2">Galeria</a></li>
		<li><a data-toggle="tab" href="#3">Videos</a></li>
		[?li1_pnlBody_div2_div_containerYoungPeople]
	</ul>
	[?tab1_pnlBody_div2_div_containerYoungPeople]
</div>
',1)


insert into TBL_CONTENT_TYPE values('li1_pnlBody_div2_div_containerYoungPeople','','<li><a data-toggle="tab" href="#4">Menu 3</a></li>',1)

insert into TBL_CONTENT_TYPE values('tab1_pnlBody_div2_div_containerYoungPeople','','
<div class="tab-content responsive">
[?pnlTab1_tab1_pnlBody_div2_div_containerYoungPeople]
[?pnlTab2_tab1_pnlBody_div2_div_containerYoungPeople]
[?pnlTab3_tab1_pnlBody_div2_div_containerYoungPeople]
[?pnlTab4_tab1_pnlBody_div2_div_containerYoungPeople]

</div>
',1)

insert into TBL_CONTENT_TYPE values('pnlTab1_tab1_pnlBody_div2_div_containerYoungPeople','','
<div id="1" class="tab-pane active">
    <div class="container">
        <div class="panel-body">
			<ul class="nav nav-tabs cssTabs">
                <li class="active"><a data-toggle="tab" href="#1P">Puzzle</a></li>
                <li><a data-toggle="tab" href="#2C">Crucigrama</a></li>
            </ul>
			[?subTab1_pnlTab1_tab1_pnlBody_div2_div_containerYoungPeople]
		</div>
	</div>
</div>
',1)

insert into TBL_CONTENT_TYPE values('subTab1_pnlTab1_tab1_pnlBody_div2_div_containerYoungPeople','',CAST('
<div class="tab-content responsive">
    <div id="1P" class="tab-pane active">
        <div class="container">
            <input type="hidden" value="1" id="typeGames" />
            <div id="puzzle-containment" style="border-top: 1px solid #eee;border-bottom:1px solid #eee;background:#fafafa;margin:30px 0;padding:10px;text-align:center">
                <div class="row">
                    <div class="col-sm-6" style="text-align: left">
                        <a href="#" class="restart-puzzle" data-grid="5">5x5</a>
                    </div>
                    <div class="col-sm-6">
                        <div id="div_crono">
                            <span id="reloj"> 0.00 </span> segundos.
                            <button type="button" id="cambiar" class="botonaco btn btn-primary btn-sm">Vamos a Jugar</button>
                           
                        </div>

                    </div>
                </div>

                <div class="pure-g" style="max-width:1280px;margin:auto">
                    <div class="pure-u-1 pure-u-md-1-2">
                        <div style="margin:10px">
                            <img id="source_image" class="pure-img" src="../images/image.jpg" />
                        </div>
                    </div>
                    <div class="pure-u-1 pure-u-md-1-2">
                        <div id="pile" style="margin:10px">
                            <div id="puzzle_solved" style="display:none;text-align:center;position:relative;top:10%">
                                <h2 style="margin:0 0 20px">Felicidades!!!</h2>
                                <div id="parones"></div>
                                <a class="pure-button button-lg restart-puzzle" data-grid="3" style="display: none">Restart Puzzle</a>
                                
                                <div>
                                    <span>Ingresa tu nombre:</span>
                                    <input type="text" class="form-control" id="namePlayer" aria-describedby="player" placeholder="Jugador" />
                                    
                                    <button type="button" class="btn btn-primary" id="finalizarJuego" onClick="getSaveGame()">Finalizar</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="fb-root"></div>
        </div>
    </div>
    <div id="2C" class="tab-pane ">
        <div class="container">
            <div class="row"></div>
            <div class="row">
                <div class="col-sm-1">
                    <button id="iniciarCruci" class="btn btn-primary btn-xs">Iniciar</button>
                    
                    <button id="finalizarCruci" class="btn btn-primary btn-xs checkWord">Finalizar</button>
                </div>

                <div class="col-sm-5">
                    <span>HORIZONTALES</span>
                    <p class="pCruci">
                        <b>1H.</b><span class="mark" data-mark="C1H"></span>
                    </p>
                    <p class="pCruci">
                        <b>2H.</b><span class="mark" data-mark="C2H"></span>
                    </p>
                    <p class="pCruci">
                        <b>3H.</b><span class="mark" data-mark="C3H"></span>
                    </p>
                    <p class="pCruci">
                        <b>4H.</b><span class="mark" data-mark="C4H"></span>
                    </p>

                </div>
                <div class="col-sm-5">
                    <span>VERTICALES</span>
                    <p class="pCruci">
                        <b>1V.</b><span class="mark" data-mark="C1V"></span>
                    </p>
                    <p class="pCruci">
                        <b>2V.</b><span class="mark" data-mark="C2V"></span>
                    </p>
                    <p class="pCruci">
                        <b>3V.</b><span class="mark" data-mark="C3V"></span>
                    </p>
                    <p class="pCruci">
                        <b>4V.</b><span class="mark" data-mark="C4V"></span>
                    </p>
                    
                </div>
                <div class="col-sm-1">
                    <div class="timer">
                        <strong>
                            <span>Tiempo:</span><strong id="timer">00:00</strong>
                        </strong>
                        
                        Puntos: <span class="points">0</span>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-12">
                    <div class="crici">
                        <table class="crucigram tdClsCrici">

                            <tbody>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td class="cruciCabeceraV"><div class="divClsCruci">3V</div></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td class="C"></td>
                                    <td class="tdBorderCuci I C3V" style="background-color: rgb(255, 255, 255);" tabindex="0"><div class="divClsCruci"></div></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td class="C"></td>
                                    <td class="tdBorderCuci I C3V" style="background-color: rgb(255, 255, 255);" tabindex="1"><div class="divClsCruci"></div></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td class="cruciCabeceraV"><div class="divClsCruci">1V</div></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td class="C"></td>
                                    <td class="tdBorderCuci I C3V" style="background-color: rgb(255, 255, 255);" tabindex="2"><div class="divClsCruci"></div></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td class="C cruciCabeceraH"><div class="divClsCruci">1V</div></td>
                                    <td class="tdBorderCuci  I C1H C1V" style="background-color: rgb(255, 255, 255);" tabindex="3"><div class="divClsCruci"></div></td>
                                    <td class="tdBorderCuci I C1H " style="background-color: rgb(255, 255, 255);"><div class="divClsCruci"></div></td>
                                    <td class="tdBorderCuci I C1H " style="background-color: rgb(255, 255, 255);"><div class="divClsCruci"></div></td>
                                    <td class="tdBorderCuci I C1H " style="background-color: rgb(255, 255, 255);"><div class="divClsCruci"></div></td>
                                    <td class="tdBorderCuci I C1H " style="background-color: rgb(255, 255, 255);"><div class="divClsCruci"></div></td>
                                    <td class="tdBorderCuci I C1H " style="background-color: rgb(255, 255, 255);"><div class="divClsCruci"></div></td>
                                    <td class="tdBorderCuci I C1H " style="background-color: rgb(255, 255, 255);"><div class="divClsCruci"></div></td>
                                    <td class="tdBorderCuci I C1H " style="background-color: rgb(255, 255, 255);" tabindex="10"><div class="divClsCruci"></div></td>
                                    <td class="tdBorderCuci I C1H " style="background-color: rgb(255, 255, 255);"><div class="divClsCruci"></div></td>
                                    <td class="tdBorderCuci I C1H " style="background-color: rgb(255, 255, 255);"><div class="divClsCruci"></div></td>
                                    <td class="tdBorderCuci I C1H C3V" style="background-color: rgb(255, 255, 255);" tabindex="13"><div class="divClsCruci"></div></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td class="C"></td>
                                    <td class="tdBorderCuci I  C1V"><div class="divClsCruci"></div></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td class="C"></td>
                                    <td class="tdBorderCuci I C3V" style="background-color: rgb(255, 255, 255);" tabindex="15"><div class="divClsCruci"></div></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td class="C"></td>
                                    <td class="tdBorderCuci  I  C1V"><div class="divClsCruci"></div></td>
                                    <td></td>
                                    <td></td>

                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td class="C"></td>
                                    <td class="tdBorderCuci I C3V" style="background-color: rgb(255, 255, 255);" tabindex="17"><div class="divClsCruci"></div></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td class="C"></td>
                                    <td class="tdBorderCuci I  C1V"><div class="divClsCruci"></div></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td class="C"></td>
                                    <td class="tdBorderCuci I C3V" style="background-color: rgb(255, 255, 255);" tabindex="19"><div class="divClsCruci"></div></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td class="C"></td>
                                    <td class="tdBorderCuci I  C1V"><div class="divClsCruci"></div></td>
                                    <td></td>
                                    <td></td>
                                    <td class="cruciCabeceraV"><div class="divClsCruci">2V</div></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td class="C"></td>
                                    <td class="tdBorderCuci I C3V" style="background-color: rgb(255, 255, 255);" tabindex="21"><div class="divClsCruci"></div></td>
                                    <td></td>
                                    <td class="cruciCabeceraV"><div class="divClsCruci">4V</div></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td class="C"></td>
                                    <td class="tdBorderCuci I  C1V"><div class="divClsCruci"></div></td>
                                    <td></td>
                                    <td class="C"></td>
                                    <td class="tdBorderCuci I C2V"><div class="divClsCruci"></div></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td class="C"></td>
                                    <td class="tdBorderCuci I C3V" style="background-color: rgb(255, 255, 255);" tabindex="23">
                                        <div class="divClsCruci"></div>
                                    </td>
                                    <td class="C"></td>
                                    <td class="tdBorderCuci I C4V"><div class="divClsCruci"></div></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td class="C"></td>
                                    <td class="tdBorderCuci I  C1V"><div class="divClsCruci"></div></td>
                                    <td></td>
                                    <td class="C"></td>
                                    <td class="tdBorderCuci I C2V"><div class="divClsCruci"></div></td>
                                    <td></td>
                                    <td class="C cruciCabeceraH"><div class="divClsCruci">3H</div></td>
                                    <td class="tdBorderCuci I C3H" style="background-color: rgb(255, 255, 255);"><div class="divClsCruci"></div></td>
                                    <td class="tdBorderCuci I C3H" style="background-color: rgb(255, 255, 255);"><div class="divClsCruci"></div></td>
                                    <td class="tdBorderCuci I C3H"><div class="divClsCruci"></div></td>
                                    <td class="tdBorderCuci I C3H" style="background-color: rgb(255, 255, 255);"><div class="divClsCruci"></div></td>
                                    <td class="tdBorderCuci I C3H C3V" style="background-color: rgb(255, 255, 255);"><div class="divClsCruci"></div></td>
                                    <td class="tdBorderCuci I C3H" style="background-color: rgb(255, 255, 255);"><div class="divClsCruci"></div></td>
                                    <td class="tdBorderCuci I C3H C4V" style="background-color: rgb(255, 255, 255);"><div class="divClsCruci"></div></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>



                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td class="cruciCabeceraH C"><div class="divClsCruci">2H</div></td>
                                    <td class="tdBorderCuci I C2H" style="background-color: rgb(255, 255, 255);"><div class="divClsCruci"></div></td>
                                    <td class="tdBorderCuci I C2H" style="background-color: rgb(255, 255, 255);"><div class="divClsCruci"></div></td>
                                    <td class="tdBorderCuci I C2H C1V" style="background-color: rgb(255, 255, 255);"><div class="divClsCruci"></div></td>
                                    <td class="tdBorderCuci I C2H" style="background-color: rgb(255, 255, 255);"><div class="divClsCruci"></div></td>
                                    <td class="tdBorderCuci I C2H" style="background-color: rgb(255, 255, 255);"><div class="divClsCruci"></div></td>
                                    <td class="tdBorderCuci I C2H C2V" style="background-color: rgb(255, 255, 255);"><div class="divClsCruci"></div></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td class="C"></td>
                                    <td class="tdBorderCuci I C3V"></td>
                                    <td class="C"></td>
                                    <td class="tdBorderCuci I C4V"><div class="divClsCruci"></div></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td class="C"></td>
                                    <td class="tdBorderCuci I  C1V"><div class="divClsCruci"></div></td>
                                    <td></td>
                                    <td class="C"></td>
                                    <td class="tdBorderCuci I C2V"><div class="divClsCruci"></div></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td class="C"></td>
                                    <td class="tdBorderCuci I C3V"><div class="divClsCruci"></div></td>
                                    <td class="C"></td>
                                    <td class="tdBorderCuci I C4V"><div class="divClsCruci"></div></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td class="C"></td>
                                    <td class="tdBorderCuci  I  C1V"><div class="divClsCruci"></div></td>
                                    <td></td>
                                    <td class="C"></td>
                                    <td class="tdBorderCuci I C2V"><div class="divClsCruci"></div></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td class="C"></td>
                                    <td class="tdBorderCuci I C4V"><div class="divClsCruci"></div></td>
                                    <td></td>
                                    <td></td>

                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td class="C"></td>
                                    <td class="tdBorderCuci I  C1V"><div class="divClsCruci"></div></td>
                                    <td></td>
                                    <td class="C"></td>
                                    <td class="tdBorderCuci I C2V"><div class="divClsCruci"></div></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td class="C"></td>
                                    <td class="tdBorderCuci I C4V"><div class="divClsCruci"></div></td>
                                    <td></td>
                                    <td></td>

                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td class="C"></td>
                                    <td class="tdBorderCuci I C2V"><div class="divClsCruci"></div></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td class="C"></td>
                                    <td class="tdBorderCuci I C4V"><div class="divClsCruci"></div></td>
                                    <td></td>
                                    <td></td>

                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td class="C"></td>
                                    <td class="tdBorderCuci I C2V"><div class="divClsCruci"></div></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td class="C"></td>
                                    <td class="tdBorderCuci I C4V"><div class="divClsCruci"></div></td>
                                    <td></td>
                                    <td></td>

                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td class="C"></td>
                                    <td class="tdBorderCuci I C2V"><div class="divClsCruci"></div></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td class="C"></td>
                                    <td class="tdBorderCuci I C4V"><div class="divClsCruci"></div></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td class="C cruciCabeceraH"><div class="divClsCruci">4H</div></td>
                                    <td class="tdBorderCuci I C4H" style="background-color: rgb(255, 255, 255);"><div class="divClsCruci"></div></td>
                                    <td class="tdBorderCuci I C4H" style="background-color: rgb(255, 255, 255);"><div class="divClsCruci"></div></td>
                                    <td class="tdBorderCuci I C4H" style="background-color: rgb(255, 255, 255);"><div class="divClsCruci"></div></td>
                                    <td class="tdBorderCuci I C4H" style="background-color: rgb(255, 255, 255);"><div class="divClsCruci"></div></td>
                                    <td class="tdBorderCuci I C4H" style="background-color: rgb(255, 255, 255);"><div class="divClsCruci"></div></td>
                                    <td class="tdBorderCuci I C4H" style="background-color: rgb(255, 255, 255);"><div class="divClsCruci"></div></td>
                                    <td class="tdBorderCuci I C4H" style="background-color: rgb(255, 255, 255);"><div class="divClsCruci"></div></td>
                                    <td class="tdBorderCuci I C4H" style="background-color: rgb(255, 255, 255);"><div class="divClsCruci"></div></td>
                                    <td class="tdBorderCuci I C4H C2V" style="background-color: rgb(255, 255, 255);"><div class="divClsCruci"></div></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td class="C"></td>
                                    <td class="tdBorderCuci I C4V"><div class="divClsCruci"></div></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
' AS VARCHAR(MAX)),1)

insert into TBL_CONTENT_TYPE values('pnlTab2_tab1_pnlBody_div2_div_containerYoungPeople','','
<div id="2" class="tab-pane fade">
    <div class="container">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				[?li1_pnlTab2_tab1_pnlBody_div2_div_containerYoungPeople]
				[?li2_pnlTab2_tab1_pnlBody_div2_div_containerYoungPeople]
				[?li3_pnlTab2_tab1_pnlBody_div2_div_containerYoungPeople]
			</ol>
			[?carusel1_pnlTab2_tab1_pnlBody_div2_div_containerYoungPeople]
			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span>
				<span class="sr-only">Previous</span>
			</a>
			<a class="right carousel-control" href="#myCarousel" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>
</div>
',1)


insert into TBL_CONTENT_TYPE values('li1_pnlTab2_tab1_pnlBody_div2_div_containerYoungPeople','','
<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
',1)
insert into TBL_CONTENT_TYPE values('li2_pnlTab2_tab1_pnlBody_div2_div_containerYoungPeople','','
<li data-target="#myCarousel" data-slide-to="1"></li>
',1)
insert into TBL_CONTENT_TYPE values('li3_pnlTab2_tab1_pnlBody_div2_div_containerYoungPeople','','
<li data-target="#myCarousel" data-slide-to="2"></li>
',1)


insert into TBL_CONTENT_TYPE values('carusel1_pnlTab2_tab1_pnlBody_div2_div_containerYoungPeople','','
<div class="carousel-inner">
[?div1_carusel1_pnlTab2_tab1_pnlBody_div2_div_containerYoungPeople]
[?div2_carusel1_pnlTab2_tab1_pnlBody_div2_div_containerYoungPeople]
[?div3_carusel1_pnlTab2_tab1_pnlBody_div2_div_containerYoungPeople]
[?div4_carusel1_pnlTab2_tab1_pnlBody_div2_div_containerYoungPeople]
</div>
',1)

insert into TBL_CONTENT_TYPE values('div1_carusel1_pnlTab2_tab1_pnlBody_div2_div_containerYoungPeople','','
<div class="item active">
	[?texto1_div1_carusel1_pnlTab2_tab1_pnlBody_div2_div_containerYoungPeople]
	[?image1_div1_carusel1_pnlTab2_tab1_pnlBody_div2_div_containerYoungPeople]
	[?texto2_div1_carusel1_pnlTab2_tab1_pnlBody_div2_div_containerYoungPeople]
</div>

',1)

insert into TBL_CONTENT_TYPE values('texto1_div1_carusel1_pnlTab2_tab1_pnlBody_div2_div_containerYoungPeople','','
<p>[@TEXT_texto1_div1_carusel1_pnlTab2_tab1_pnlBody_div2_div_containerYoungPeople]</p>',1)

set @cot_nid = scope_identity()
insert into TBL_RVARIABLE values('TEXT_texto1_div1_carusel1_pnlTab2_tab1_pnlBody_div2_div_containerYoungPeople','','Titulo 1',1,1,null,null,@cot_nid)


insert into TBL_CONTENT_TYPE values('image1_div1_carusel1_pnlTab2_tab1_pnlBody_div2_div_containerYoungPeople','','
<img data-src="" alt="100%x280" src="[@IMAGE_image1_div1_carusel1_pnlTab2_tab1_pnlBody_div2_div_containerYoungPeople]" class="img-responsive" data-holder-rendered="true" /><br />
',1)
set @cot_nid = scope_identity()
insert into TBL_RVARIABLE values('IMAGE_image1_div1_carusel1_pnlTab2_tab1_pnlBody_div2_div_containerYoungPeople','','../images/ImgAhorroPlatino.jpg',1,2,null,null,@cot_nid)

insert into TBL_CONTENT_TYPE values('texto2_div1_carusel1_pnlTab2_tab1_pnlBody_div2_div_containerYoungPeople','','
<p>[@TEXT_texto2_div1_carusel1_pnlTab2_tab1_pnlBody_div2_div_containerYoungPeople]</p>
',1)

set @cot_nid = scope_identity()
insert into TBL_RVARIABLE values('TEXT_texto2_div1_carusel1_pnlTab2_tab1_pnlBody_div2_div_containerYoungPeople','','
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
',1,1,null,null,@cot_nid)


insert into TBL_CONTENT_TYPE values('pnlTab3_tab1_pnlBody_div2_div_containerYoungPeople','','
<div id="3" class="tab-pane fade">
    <div class="container">
        <div id="myCarouselVideo" class="carousel slide" data-ride="carousel">

			[?ol1_pnlTab3_tab1_pnlBody_div2_div_containerYoungPeople]
			[?divCarrusel_pnlTab3_tab1_pnlBody_div2_div_containerYoungPeople]
			<!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarouselVideo" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarouselVideo" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
</div>
',1)


insert into TBL_CONTENT_TYPE values('ol1_pnlTab3_tab1_pnlBody_div2_div_containerYoungPeople','','
<ol class="carousel-indicators">
    [?li1_ol1_pnlTab3_tab1_pnlBody_div2_div_containerYoungPeople]
    [?li2_ol1_pnlTab3_tab1_pnlBody_div2_div_containerYoungPeople]
	[?li3_ol1_pnlTab3_tab1_pnlBody_div2_div_containerYoungPeople]
</ol>
',1)


insert into TBL_CONTENT_TYPE values('li1_ol1_pnlTab3_tab1_pnlBody_div2_div_containerYoungPeople','','
<li data-target="#myCarouselVideo" data-slide-to="0" class="active"></li>
',1)
insert into TBL_CONTENT_TYPE values('li2_ol1_pnlTab3_tab1_pnlBody_div2_div_containerYoungPeople','','
<li data-target="#myCarouselVideo" data-slide-to="1"></li>
',1)
insert into TBL_CONTENT_TYPE values('li3_ol1_pnlTab3_tab1_pnlBody_div2_div_containerYoungPeople','','
<li data-target="#myCarouselVideo" data-slide-to="2"></li>
',1)


insert into TBL_CONTENT_TYPE values('divCarrusel_pnlTab3_tab1_pnlBody_div2_div_containerYoungPeople','','
<div class="carousel-inner">
[?div1_divCarrusel_pnlTab3_tab1_pnlBody_div2_div_containerYoungPeople]
[?div2_divCarrusel_pnlTab3_tab1_pnlBody_div2_div_containerYoungPeople]
[?div3_divCarrusel_pnlTab3_tab1_pnlBody_div2_div_containerYoungPeople]
</div>',1)


insert into TBL_CONTENT_TYPE values('div1_divCarrusel_pnlTab3_tab1_pnlBody_div2_div_containerYoungPeople','','
<div class="item active">
    
	[?texto1_div1_divCarrusel_pnlTab3_tab1_pnlBody_div2_div_containerYoungPeople]
    <div class="embed-responsive embed-responsive-16by9">
        <iframe class="embed-responsive-item" src="[@TEXT_1href_Iframe_div1_divCarrusel_pnlTab3_tab1_pnlBody_div2_div_containerYoungPeople]" allowfullscreen="true"></iframe>
    </div>
	[?parrafo1_div1_divCarrusel_pnlTab3_tab1_pnlBody_div2_div_containerYoungPeople]
    

</div>
',1)

set @cot_nid = scope_identity()
insert into TBL_RVARIABLE values('TEXT_1href_Iframe_div1_divCarrusel_pnlTab3_tab1_pnlBody_div2_div_containerYoungPeople','','https://www.youtube.com/embed/8l7X-oLkSfo',1,1,null,null,@cot_nid)

insert into TBL_CONTENT_TYPE values('parrafo1_div1_divCarrusel_pnlTab3_tab1_pnlBody_div2_div_containerYoungPeople','','
<p>[@TEXT_parrafo1_div1_divCarrusel_pnlTab3_tab1_pnlBody_div2_div_containerYoungPeople]</p>
',1)

set @cot_nid = scope_identity()
insert into TBL_RVARIABLE values('TEXT_parrafo1_div1_divCarrusel_pnlTab3_tab1_pnlBody_div2_div_containerYoungPeople','','xxxxxx',1,1,null,null,@cot_nid)


insert into TBL_CONTENT_TYPE values('texto1_div1_divCarrusel_pnlTab3_tab1_pnlBody_div2_div_containerYoungPeople','','
<p>[@TEXT_texto1_div1_divCarrusel_pnlTab3_tab1_pnlBody_div2_div_containerYoungPeople]</p>
',1)

set @cot_nid = scope_identity()
insert into TBL_RVARIABLE values('TEXT_texto1_div1_divCarrusel_pnlTab3_tab1_pnlBody_div2_div_containerYoungPeople','','xxxxx',1,1,null,null,@cot_nid)





insert into TBL_CONTENT_TYPE values('div2_divCarrusel_pnlTab3_tab1_pnlBody_div2_div_containerYoungPeople','','',1)




insert into TBL_CONTENT_TYPE values('div3_divCarrusel_pnlTab3_tab1_pnlBody_div2_div_containerYoungPeople','','',1)



insert into TBL_CONTENT_TYPE values('pnlTab4_tab1_pnlBody_div2_div_containerYoungPeople','','
<div id="4" class="tab-pane fade">
    <h3>Menu 3</h3>
    <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
</div>
',1)



-------------------------------insercion content
--declare @cot_nid bigint
declare @cont bigint
declare @seccion bigint
declare @cotIdMax bigint
set @cont = 1

select @seccion = sec_nid
from TBL_RSECTION 
where sec_cname = 'Container_YoungPeople'

select @cot_nid = cot_nid
from TBL_CONTENT_TYPE 
where cot_cname = 'div_containerYoungPeople'

select @cotIdMax = cot_nid
from TBL_CONTENT_TYPE 
where cot_cname = 'pnlTab4_tab1_pnlBody_div2_div_containerYoungPeople'


while @cot_nid <= @cotIdMax
begin
	insert into TBL_CONTENT values((select cot_cname from TBL_CONTENT_TYPE where cot_nid = @cot_nid ),'',@cont,0,null,@cot_nid,@seccion)
	set @cot_nid = @cot_nid + 1
	set @cont = @cont + 1
	PRINT @cot_nid
end
-----------------------


declare @cot_nid1 bigint 

insert into TBL_CONTENT 
select CON_CNAME,
CON_CDESCRIPTION,
0,
CON_OSTATE,
CON_NID_PARENT,
COT_NID,
30004
from TBL_CONTENT
where con_nid in(1)

set @cot_nid1 = scope_identity()

insert into TBL_CONTENT 
select CON_CNAME,
CON_CDESCRIPTION,
0,
CON_OSTATE,
@cot_nid1,
COT_NID,
30004
from TBL_CONTENT
where con_nid in(2)

insert into TBL_CONTENT 
select CON_CNAME,
CON_CDESCRIPTION,
(select max(con_norder) + 1 from tbl_content where sec_nid = 30004),
CON_OSTATE,
CON_NID_PARENT,
COT_NID,
30004
from TBL_CONTENT
where con_nid in(3)

