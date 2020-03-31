<!--#include file="includes/template.asp"-->

<%
	menu = lcase(request("menu"))
	if menu <> "food" and menu <> "wine" then
		menu = "food"
	end if
%>
<%
	openPage "menus","Menus"
	openBody
%>

		<div id="flashfoodwine" align="center">
		  <a href="menu.asp?menu=food">food</a> | <a href="menu.sap?menu=wine">wine</a>
		</div>
		<script type="text/javascript">
		  var so = new SWFObject("flash/foodwine.swf", "header", "400", "90", "8", "#ededed");
			so.addVariable("section", "<%=menu%>");
		  so.write("flashfoodwine");
		</script>


<% if menu = "food" then %>

<div class="sampleMenu">

<% insertTitle "Bread",7 %>

<p>Bacon & rosemary bread</p>
<p>Pesto, parmesan & semi dried tomato flatbread</p>

<% insertTitle "Oysters",7 %>

<p>Natural</p>
<p>Chilli, ginger, lime & rice wine</p>
<p>Kilpatrick</p>
<p>Beer battered</p>
<p>Lemongrass & Saki shooters</p>

<% insertTitle "Sides/Salads",7 %>

<p>Broccolini, roasted flaked almonds, poached egg, shaved parmesan & balsamic syrup</p>
<p>Roasted butternut pumpkin, chilli, coriander and mint yoghurt</p>
<p>Surfrider Caesar – garlic croutons, crispy bacon, poached free range egg, shaved parmesan & cos lettuce</p>
<p>Rocket, walnut, balsamic roasted baby beetroot, pear & Kind Island double bree</p>
<p>Garden salad</p>
<p>Shoe string fries</p>
<p>Soft herb & garlic mash potato</p>
<p>Seasonal vegetables</p>

<% insertTitle "Entrée",7 %>

<p>Lemon pepper Californian squid, lime aioli, orange, chilli, papaya, coriander, coconut & Thai basil salad</p>
<p>White pepper & potato gnocchi, jap pumpkin, toasted pine nuts & spinach in a garlic & cream sauce</p>
<p>Spinach & Persian fetta ravioli, tossed through cherry tomatoes, snow peas, w a buerre noisette</p>
<p>Local jumbo quail, oven roasted, wrapped in pancetta, pink eye potatoes, organic tomato, rocket & bean salad</p>
<p>Crispy fried honey & soy suckling pork belly, Cajun cuttlefish, sweet basil, ruby grapefruit, coconut papaya & chilli salad, nam jim dressing</p>
<p>Tempura battered Atlantic salmon, grilled South Australian king prawn, sweet soy, rockmelon & coconut salsa</p>
<p>Seared local scallops wrapped in prosciutto on fried potato dumplings, chilli jam w basil & rocket salad</p>
<p>Surfrider Antipasto – suckling pork & Cajun cuttlefish, scallop & potato dumping, lemon pepper squid, lemon grass & Saki oyster shooter</p>

<% insertTitle "Main",7 %>

<p>Cajun spice, crispy skin blue eye on potato rosti, rocket crispy onion, avocado, coriander, & green bean salad, buerre blanc w a citrus & pine nut mojo</p>
<p>Asian style pork shank, gingered sweet potato mash, warm salad of beanshoot, beans, red onion, Thai basil & mint w pomegranate & chilli caramel</p>
<p>Twice cooked honey & soy farm duck, buerre bosch pears, pink eye potatoes, gingered bok choy & teriyaki sauce</p>
<p>Surfrider red jungle curry, barramundi fillet, South Australian king prawn, black lip mussel, squid, coconut rice, macadamia & coriander tzatziki & a poppadom</p>
<p>Tassle nut crusted Atlantic salmon on crispy parmesan potato pie, wilted spinach, balsamic reduction & lime aioli</p>
<p>Grain fed eye fillet on garlic & soft herb mash potato, crispy bacon, peppered spinach, roasted rosemary field mushroom & red wine jus</p>
<p>Butternut pumpkin, sugar snap & cashew nut laska w rice noodles, Asian greens, been shoots, coriander & crispy garlic</p>
<p>Oven roasted baby chicken stuffed w chorizo, pine nuts & parsley, kiffler mash, pan tossed butch carrots, broccolini w an orange & campari dressing</p>

<% insertTitle "Dessert",7 %>

<p>Caramelized banana & sticky date pudding soaked in butterscotch sauce vanilla ice cream & spun sugar</p>
<p>White chocolate & passion fruit crème brulee, toasted coconut ice cream & shortbread</p>
<p>Rhubarb & pear crumble, French vanilla custard & Frangellico ice cream</p>
<p>Warm chocolate ooze pudding, chocolate fudge sauce, Bailey’s ice cream & toasted almond tuille</p>
<p>Baked cheese cake w candied citrus, raspberry caramel & double cream</p>
<p>Assiette – chefs selection of desserts</p>
<p>Today’s selection of Australian cheese, fresh fruit, lavosh bread & California dates</p>

</div>
&nbsp;


<% elseif menu = "wine" then %>




<div class="sampleMenu">

<% insertTitle "WHITE WINE",7 %>
<% insertTitle "Sparkling",7 %>

<p>Redbank Emily NV<br>
Victoria</p>

<p>Jansz<br>
Tasmania</p>

<p>Moet et Chandon	<br>
France							</p>

<% insertTitle "Riesling",7 %>

<p>Pettavel  Evening Star		<br>
Geelong		</p>				

<p>Knappstein Riesling  05	<br>
Clare Valley						</p>

<p>Mitchell Watervale Riesling 06	<br>
Clare Valley				</p>

<p>Petaluma Reisling  06		<br>
South Australia					</p>

<p>Crawford River  Riesling  04	<br>
Western  Victoria		</p>			

<% insertTitle "Sauvignon Blanc",7 %>
      
<p>Swan Bay Sauvignon Blanc Semillon 06<br>
Drysdale  Victoria	</p>		

<p>Mt. Riley Sauvignon Blanc  06	<br>
New Zealand			</p>			

<p>Giesen Sauvignon Blanc  07		<br>
New Zealand				</p>

<p>Catalina Sounds Sauvignon Blanc  06<br>
Marlborough  New Zealand</p>				

<p>Shaw & Smith Sauvignon Blanc  06	<br>
Adelaide Hills		</p>				

<p>Te Mata Woodthorpe Sauvignon Blanc  06	<br>
Hawkes Bay  New Zealand	</p>			

<p>Isabel	Sauvignon Blanc  05		<br>
Marlborough  New Zealand		</p>			

<% insertTitle "Chardonnay ",7 %>
 
<p>Capel Vale Unwooded Chardonnay <br>	
Western Australia		</p>			

<p>Swan Bay Chardonnay  06	<br>
Bellarine Peninsular		</p>	

<p>Diamond Valley Blue Chardonnay  05<br>
Yarra Valley</p>					

<p>Hollick Chardonnay Reserve  05	<br>
Coonawarra  SA	</p>				

<p>Stoniers Chardonnay  05	<br>	
Mornington Peninsular  Victoria	</p>		

<p>Scotchmans Hill Chardonnay  06	<br>
Bellarine Peninsular  Victoria	</p>		

<p>Pipers Brook Chardonnay  03	<br>
Tasmania	</p>					

<p>Shaw & Smith M3 Chardonnay    05	<br>
Adelaide Hills  SA</p>					

<p>Bannockburn Chardonnay       02<br>
Geelong		</p>				

<% insertTitle "Others",7 %>

<p>Snapper Point Classic Dry White	</p>		
	
<p>Tulloch Verdello					</p>

<p>Ninth Island Pinot Grigio  07<br>
Tasmania						</p>

<% insertTitle "Dessert & Fortified Wines",7 %>

<p>Cookathama Botrytis Semillon  05  <br>
373 ml</p>

<p>Vietti Moscato d’Asti       <br>                                  
375 ml</p>

<% insertTitle "RED WINES",7 %>

<% insertTitle "Pinot Noir	",7 %>						

<p>Ninth Island Pinot Noir  06	<br>	
Tasmania		</p>		

<p>Sticks 	Pinot  04 /05		<br>		
Yarra Valley	Victoria		</p>		

<p>Diamond Valley Pinot Noir  05<br>
Yarra Valley  Victoria	</p>			

<p>Pipers Brook Pinot Noir  04<br>
Tasmania</p>

<% insertTitle "Cabernet Blends",7 %>

<p>Ferngrove Cabernet Merlot 05	<br>
Franklin River  WA	</p>				

<p>Rymill MC2 Merlot Cabernet  03	<br>
Coonawarra	</p>					

<p>Thorn Clarke Shotfire Ridge Quartage  05<br>
Barossa  SA		</p>				

<p>Hollick Cabernet Sauvingon Merlot 04<br>
Coonawarra  SA	</p>		

<p>Bleasdale  Frank Potts Cabernet Mal.  04<br>
Langhorne Creek		</p>			
					
<% insertTitle "Cabernet Sauvignon",7 %>

<p>Sticks Cabernet Savignon  03/04<br>
Yarra Valley	Vic		</p>			

<p>Norfolk Rise Cabernet Sauvignon 05<br>
Mt Benson  SA</p>			

<p>Edwards Vineyard Cabernet Sauvignon  04	<br>
Margaret River  WA</p>					

<p>Riddoch Cabernet Sauvignon  03/04<br>
Coonawarra  SA		</p>			

<p>Vasse Felix Cabernet Sauvignon  04	<br>
Margaret River WA	</p>				

<p>Howard Park Leston  04<br>
Margaret River  WA		</p>			

<p>Hollick Cabernet Sauvignon  03<br>
Coonawarra  SA			</p>	

<p>Howard Park Scotsdale  04	<br>	
Great Southern  WA		</p>			

<% insertTitle "Shiraz",7 %>                              	

<p>Cravens Place Shiraz  05/06	<br>
Heathcote  Victoria		</p>	

<p>St. Hallet Faith Shiraz  06	<br>	
Barossa  SA				</p>	

<p>Shelmerdine Shiraz  05	 <br>	
Heathcote  Victoria 	</p>			

<p>Thorn Clark ShotFire Ridge Shiraz  05/06<br>
Barossa  SA		</p>				

<p>Wirra Wirra Woodhenge Shiraz  05			<br>
McLaren Vale  SA	</p>			

<p>Mitchell Peppertree Shiraz  04/05	<br>
Clare Valley  SA		</p>	 

<p>Scotchmans Hill  Shiraz  05	<br>
Drysdale Victoria	</p>				

<p>Shingleback Shiraz 03	<br>	
McLaren Vale		</p>				

<p>Bannockburn Shiraz 03<br>
Geelong	</p>				

<p>Heathcote Estate Shiraz  04<br>
Heathcote		</p>				

<% insertTitle "Others",7 %>

<p>Garry Crittenden Rosato  05<br>
Dromana  Victoria	</p>				

<p>RockBare GSM 06<br>
Grenache Shiraz Mourvedre<br>
McLaren Vale SA   </p>                                         

<% insertTitle "Reserve Wines",7 %>

<p>Voyager Estate Cabernet Sauvignon Merlot  03<br> 
Margaret River  WA		</p>			

<p>Red Edge Shiraz  05<br>
Heathcote  Victoria					</p>

<p>Dalwhinnie Moonambel Cabernet Sauvignon  04<br>
Pyrenees  Victoria					</p>

<p>Hollick Ravenswood Cabernet Sauvignon 01<br>
Coonawarra SA                   </p>                           

<p>Two Hands Bella’s Garden Shiraz  05<br>
Barossa  SA						</p>

<p>Katnook Estate Odessey Cabernet Sauvignon  01<br>
Coonawarra  SA					</p>
<!--
<% insertTitle "BEERS",7 %>

<% insertTitle "Imported Beers",7 %>

<p>Corona	</p>					
<p>Heinekin 			</p>			
<p>Stella Artois					</p>	
<p>Asahi 							</p>

<% insertTitle "Australian Beers",7 %>

<p>Cascade Light					</p>
<p>Coopers Sparkling					</p>
<p>Coopers Pale Ale					</p>
<p>Crown Larger						</p>
<p>James Boags Premium				</p>
<p>Melbourne Bitter					</p>
<p>Victoria Bitter						</p>

<% insertTitle "Spirits, Liqueurs & Ports",7 %>

<p>Smirnoff Vodka</p>
<p>Cougar Bourbon</p>
<p>Brandy</p>
<p>Bundaberg Rum</p>
<p>Gordon’s Gin 				</p>		

<p>Johnny Walker Red</p>
<p>Jim Beam</p>
<p>Bacardi</p>
<p>Ouzo</p>
<p>Canadian Club					</p>

<p>Bombay Sapphire Gin</p>
<p>Southern Comfort</p>
<p>Johnny Walker Black</p>
<p>Jamison’s Irish Whisky</p>
<p>Jack Daniel’s</p>
<p>Amaretto</p>
<p>Benadictine</p>
<p>Drambui</p>
<p>Frangelico</p>
<p>Galliano</p>
<p>Kahlua</p>
<p>Sambuca</p>
<p>Tia Maria</p>
<p>Absolut Vodka</p>
		
<p>RL Buller Muscat</p>
<p>Seppelt Para Tawney Port</p>
<p>Galway Pipe Port</p>
<p>Yaldara Fine Old Tawney</p>				

<p>Glenlivet Scotch</p>
<p>Hennesy VSOP Cognac				</p>

<% insertTitle "Cocktails",7 %>

<p>Kir Royale<br>
Sparkling Wine, Crème de Cassis		</p>	

<p>Bloody Mary<br>
Vodka, Tomato Juice, Tabasco and Worcestershire sauce		</p>		

<p>Midori Splice<br>
Midori, Malibu, Pineapple Juice, cream		</p>

<p>Tequila Sunrise<br>
Tequila, Grenadine, Orange Juice	</p>		

<p>Harvey Wallbanger<br>
Vodka, Galliano, Orange Juice			</p>

<p>Pina Colada<br>
Bacardi, Malibu, Coconut Cream, and Pineapple Juice					</p>

<p>Toblerone<br>
Tia Maria, Frangelico, Honey, Cream		</p>

<p>Cosmopolitan<br>
Vodka, Cointreau, Cranberry Juice, Lime		</p>

<p>Daiquiri<br>
Bacardi, Cointreau, Fruit Liqueur, Fruit		</p>

<p>Margarita<br>
Tequila, Cointreau, Lemon Juice		</p>	

<p>Mudslide<br>
Vodka, Baileys and Kahlua on ice. 		</p>

-->
</div><br>&nbsp;
<% end if %>

<%
	closeBody
%>
