<%@page import="java.util.ArrayList"%>
<%@page import="Test.Customer_Pojo"%>
<%@page import="Test.Customer_Dao"%>
<head>
<style>
@import url('https://fonts.googleapis.com/css?family=Palanquin:400,600,700');
@import url('https://fonts.googleapis.com/css?family=Open+Sans:400,600,700');
@import url('https://fonts.googleapis.com/css?family=Yantramanav:400,700');
@import url("https://fonts.googleapis.com/css?family=Merriweather:400,400i,700");
*{
	border: 0;
	box-sizing: content-box;
	color: inherit;
	font-family: 'Merriweather', serif !important;
	font-size: inherit;
	font-style: inherit;
	font-weight: inherit;
	line-height: inherit;
	list-style: none;
	margin: 0;
	padding: 0;
	text-decoration: none;
	vertical-align: top;
}
.marathi{
	font-family: 'Palanquin', sans-serif !important;
}
.marathi.info p {
    margin-top: 0;
    font-weight: 600;
    margin-bottom: 0;
    font-family: 'Palanquin', sans-serif !important;
    font-size: 11px;
    color: #181818;
    line-height: 1.5;
}
p.text-center.mah_in {
    position: absolute;
    font-size: 12px;
    top: 5px;
    left: 47%;
    font-family: 'Palanquin', sans-serif !important;
}
.Signature ul li:before {
    content: '';
    position: absolute;
    top: -10px;
    border-top: 1px dashed #999;
    width: 44%;
}
td{word-break: break-all;}    
.marathi.info {
    margin-top: 20px;
}
.red{
	color:#f44336!important;
}
/* content editable */

*[contenteditable] { border-radius: 0.25em; min-width: 1em; outline: 0; }

*[contenteditable] { cursor: pointer; }

*[contenteditable]:hover, *[contenteditable]:focus, td:hover *[contenteditable], td:focus *[contenteditable], img.hover {  }

span[contenteditable] { display: inline-block; }

/* heading */

h1 { font: bold 100% sans-serif; letter-spacing: 0.5em; text-align: center; text-transform: uppercase; }

/* table */

table { font-size: 75%; table-layout: fixed; width: 100%; }
table { border-collapse: separate; border-spacing: 2px; }
th, td { border-width: 1px; padding: 0.5em; position: relative; text-align: left; }
th, td { border-radius: 0.25em; border-style: solid; }
th { background: #EEE; border-color: #BBB; }
td { border-color: #DDD; }

/* page */

html { font: 16px/1 'Open Sans', sans-serif; overflow: auto; padding: 0.5in; }
html { background: #999; cursor: default; }

body { box-sizing: border-box; min-height: 11in; margin: 0 auto; padding: 0 0.5in; width: 8.5in; }
body { background: #FFF; border-radius: 1px; box-shadow: 0 0 1in -0.25in rgba(0, 0, 0, 0.5); }

/* header */

header { margin: 0 0 1em; }
header:after { clear: both; content: ""; display: table; }

header h1 { background: #000; border-radius: 0.25em; color: #FFF; margin: 0 0 1em; padding: 0.5em 0; }
header address { float: left; font-size: 75%; font-style: normal; line-height: 1.25; margin: 0 1em 1em 0; }
header address p { margin: 0 0 0.25em; }
header span, header img { display: block; }
header span { max-height: 100%; max-width: 100%; position: relative; }
header img { max-height: 100%; max-width: 100%; margin: 0 auto;}
header input { cursor: pointer; -ms-filter:"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)"; height: 100%; left: 0; opacity: 0; position: absolute; top: 0; width: 100%; }

/* article */

article, article address, table.meta, table.inventory { margin: 0 0 3em; }
article:after { clear: both; content: ""; display: table; }
article h1 { clip: rect(0 0 0 0); position: absolute; }

article address { float: left; font-size: 125%; font-weight: bold; }

/* table meta & balance */

table.meta, table.balance { float: right; width: 40%; }
table.meta:after, table.balance:after { clear: both; content: ""; display: table; }

/* table meta */

table.meta th { width: 40%; }
table.meta td { width: 60%; }

/* table items */

table.inventory { clear: both; width: 100%; }
table.inventory th { font-weight: 400; text-align: center; }

table.inventory td:nth-child(1) { width: 26%; }
table.inventory td:nth-child(2) { width: 38%; }
table.inventory td:nth-child(3) { text-align: right; width: 12%; }
table.inventory td:nth-child(4) { text-align: right; width: 12%; }
table.inventory td:nth-child(5) { text-align: right; width: 12%; }

/* table balance */

table.balance th, table.balance td { width: 50%; }
table.balance td { text-align: right; }

/* aside */

aside h1 { border: none; border-width: 0 0 1px; margin: 0 0 1em; }
aside h1 { border-color: #999; border-bottom-style: solid; }
.left_info {
    width: 60%;
    display: inline-block;
}
.min_height {
    min-height: 283px;
}
/* javascript */

.add, .cut
{
	border-width: 1px;
	display: block;
	font-size: .8rem;
	padding: 0.25em 0.5em;	
	float: left;
	text-align: center;
	width: 0.6em;
}

.add, .cut, .mah_btn
{
	background-position: 0% 0%;
	box-shadow: 0 1px 2px rgba(0,0,0,0.2);
	border-radius: 0.5em;
	border-color: #0076A3;
	color: #FFF;
	cursor: pointer;
	font-weight: bold;
	background-image: -webkit-linear-gradient(#00ADEE 5%, #0078A5 100%);
	background-color: #9AF;
	background-repeat: repeat;
	background-attachment: scroll;
}

.add { margin: -2.5em 0 0; }

.add:hover { background: #00ADEE; }

.cut { opacity: 0; position: absolute; top: 0; left: -1.5em; }
.cut { -webkit-transition: opacity 100ms ease-in; }

tr:hover .cut { opacity: 1; }

@media print {
	* { -webkit-print-color-adjust: exact; }
	html { background: none; padding: 0; }
	body { box-shadow: none; margin: 0; }
	.add, .cut { display: none; }
		.input.clientDetails{
	    border-bottom: none;
	}

}
@page { margin: 0; }

body{
	margin-top: 0px;
	box-shadow: 10px 10px 5px #888888;
	position: relative;
}
header img {
    width: 816px;
    margin-left: -48px;
    max-width: 816px !important;
}
div.container a.navbar-brand{
	color: white;
}
img.stamp{
	margin-left:5px;
	height:50px;
	background: rgba(0, 0, 0, 0);
	box-shadow: 0 0 0 0 rgba(0, 0, 0, 0);
}
.bold{
	font-weight:400;
}
.left_btn button.mah_btn {
    font-size: 14px;
    font-weight: 400;
    padding: 8px 19px;
    border-radius: 3px;
}
.left_btn {
    width: 50%;
    float: left;
}
.Signature ul li {
    font-size: 14px;
    text-transform: uppercase;
    display: inline-block;
    width: 48%;
    position:relative;
}
.Signature ul li:last-child {
    text-align: right;
}
::-webkit-input-placeholder { /* WebKit browsers */
        color: #dbdbdb;
    }
    :-moz-placeholder { /* Mozilla Firefox 4 to 18 */
       color: #dbdbdb;
    }
    ::-moz-placeholder { /* Mozilla Firefox 19+ */
       color: #dbdbdb;
    }
    :-ms-input-placeholder { /* Internet Explorer 10+ */
       color: #dbdbdb;
    }

    textarea::-webkit-input-placeholder { /* WebKit browsers */
        color: #dbdbdb;
    }
    textarea:-moz-placeholder { /* Mozilla Firefox 4 to 18 */
       color: #dbdbdb;
    }
    textarea::-moz-placeholder { /* Mozilla Firefox 19+ */
       color: #dbdbdb;
    }
    textarea:-ms-input-placeholder { /* Internet Explorer 10+ */
       color: #dbdbdb;
    }

@media print {
	.noprint { display: none !important; }
	.input.clientDetails{
	    border-bottom: none;
	}

    ::-webkit-input-placeholder { /* WebKit browsers */
        color: transparent;
    }
    :-moz-placeholder { /* Mozilla Firefox 4 to 18 */
       color: transparent;
    }
    ::-moz-placeholder { /* Mozilla Firefox 19+ */
       color: transparent;
    }
    :-ms-input-placeholder { /* Internet Explorer 10+ */
       color: transparent;
    }

    textarea::-webkit-input-placeholder { /* WebKit browsers */
        color: transparent;
    }
    textarea:-moz-placeholder { /* Mozilla Firefox 4 to 18 */
       color: transparent;
    }
    textarea::-moz-placeholder { /* Mozilla Firefox 19+ */
       color: transparent;
    }
    textarea:-ms-input-placeholder { /* Internet Explorer 10+ */
       color: transparent;
    }
    .clientDetails {
	    width: 400px;
	    border-bottom: none;
	    margin-bottom: 1px;
	}
	.left_btn{
		display:none;
	}


}

.nodisplay{
	display: none;
}

.display {
	display: block;
}

table.cpanel td {
    text-align: center;
}
.clientDetails {
    width: 400px;
    border-bottom: 1px solid #ccc;
	margin-bottom: 3px;
    font-size: 15px;
}
.bootstrap * {
  -webkit-box-sizing: border-box;
     -moz-box-sizing: border-box;
          box-sizing: border-box;
}

.add:hover,.cut:hover { text-decoration: none; }
.size{
    font-size: 13px;
    font-family: Gill, Helvetica, sans-serif ;
    letter-spacing: 1.3px;
    
}
</style>
<script>
  /* Shivving (IE8 is not supported, but at least it won't look as awful)
/* ========================================================================== */

item_count=0;
(function (document) {
	var
	head = document.head = document.getElementsByTagName('head')[0] || document.documentElement,
	elements = 'article aside audio bdi canvas data datalist details figcaption figure footer header hgroup mark meter nav output picture progress section summary time video x'.split(' '),
	elementsLength = elements.length,
	elementsIndex = 0,
	element;

	while (elementsIndex < elementsLength) {
		element = document.createElement(elements[++elementsIndex]);
	}

	element.innerHTML = 'x<style>' +
		'article,aside,details,figcaption,figure,footer,header,hgroup,nav,section{display:block}' +
		'audio[controls],canvas,video{display:inline-block}' +
		'[hidden],audio{display:none}' +
		'mark{background:#FF0;color:#000}' +
	'</style>';

	return head.insertBefore(element.lastChild, head.firstChild);
})(document);

/* Prototyping
/* ========================================================================== */

(function (window, ElementPrototype, ArrayPrototype, polyfill) {
	function NodeList() { [polyfill] }
	NodeList.prototype.length = ArrayPrototype.length;

	ElementPrototype.matchesSelector = ElementPrototype.matchesSelector ||
	ElementPrototype.mozMatchesSelector ||
	ElementPrototype.msMatchesSelector ||
	ElementPrototype.oMatchesSelector ||
	ElementPrototype.webkitMatchesSelector ||
	function matchesSelector(selector) {
		return ArrayPrototype.indexOf.call(this.parentNode.querySelectorAll(selector), this) > -1;
	};

	ElementPrototype.ancestorQuerySelectorAll = ElementPrototype.ancestorQuerySelectorAll ||
	ElementPrototype.mozAncestorQuerySelectorAll ||
	ElementPrototype.msAncestorQuerySelectorAll ||
	ElementPrototype.oAncestorQuerySelectorAll ||
	ElementPrototype.webkitAncestorQuerySelectorAll ||
	function ancestorQuerySelectorAll(selector) {
		for (var cite = this, newNodeList = new NodeList; cite = cite.parentElement;) {
			if (cite.matchesSelector(selector)) ArrayPrototype.push.call(newNodeList, cite);
		}

		return newNodeList;
	};

	ElementPrototype.ancestorQuerySelector = ElementPrototype.ancestorQuerySelector ||
	ElementPrototype.mozAncestorQuerySelector ||
	ElementPrototype.msAncestorQuerySelector ||
	ElementPrototype.oAncestorQuerySelector ||
	ElementPrototype.webkitAncestorQuerySelector ||
	function ancestorQuerySelector(selector) {
		return this.ancestorQuerySelectorAll(selector)[0] || null;
	};
})(this, Element.prototype, Array.prototype);

/* Helper Functions
/* ========================================================================== */
function generateTableRow() {
item_count++;

var emptyColumn = document.createElement('tr');

 
  emptyColumn.innerHTML = '<td><a class="cut" title="Remove Item">-</a><span id="item'+item_count+'" contenteditable></span></td>' +
    '<td><span contenteditable ></span></td>' +
    '<td><span data-prefix>?</span><span contenteditable id="rate'+item_count+'">0.00</span></td>' +
    '<td><span contenteditable id="qut'+item_count+'">1</span></td>' +
    '<td><span data-prefix>?</span><span >0.00</span></td>'; 
    
	return emptyColumn;

    
}

function parseFloatHTML(element) {
	return parseFloat(element.innerHTML.replace(/[^\d\.\-]+/g, '')) || 0;
}

function parsePrice(number) {
	return number.toFixed(2).replace(/(\d)(?=(\d\d\d)+([^\d]|$))/g, '$1,');
}

/* Update Number
/* ========================================================================== */

function updateNumber(e) {
	var
	activeElement = document.activeElement,
	value = parseFloat(activeElement.innerHTML),
	wasPrice = activeElement.innerHTML == parsePrice(parseFloatHTML(activeElement));

	if (!isNaN(value) && (e.keyCode == 38 || e.keyCode == 40 || e.wheelDeltaY)) {
		e.preventDefault();

		value += e.keyCode == 38 ? 1 : e.keyCode == 40 ? -1 : Math.round(e.wheelDelta * 0.025);
		value = Math.max(value, 0);

		activeElement.innerHTML = wasPrice ? parsePrice(value) : value;
	}

	updateInvoice();
}

/* Update Invoice
/* ========================================================================== */

function updateInvoice() {
	var total = 0;
	var cells, price, total, a, i;

	// update inventory cells
	// ======================

	for (var a = document.querySelectorAll('table.inventory tbody tr'), i = 0; a[i]; ++i) {
		// get inventory row cells
		cells = a[i].querySelectorAll('span:last-child');

		// set price as cell[2] * cell[3]
		price = parseFloatHTML(cells[2]) * parseFloatHTML(cells[3]);

		// add price to total
		total += price;

		// set row total
		cells[4].innerHTML = price;
	}

	// update balance cells
	// ====================

  // get label cells
  label_cells = document.querySelectorAll('table.balance th span:last-child');
  tax_rate = label_cells[1].innerHTML/100;

	// get balance cells
	cells = document.querySelectorAll('table.balance td:last-child span:last-child');

	// set total
	cells[0].innerHTML = total;

  // set tax
  cells[1].innerHTML = parsePrice(total * tax_rate);

	// set balance and meta balance
	cells[2].innerHTML = document.querySelector('table.meta tr:last-child td:last-child span:last-child').innerHTML = parsePrice(total + parseFloatHTML(cells[1]));

	// update prefix formatting
	// ========================

	var prefix = document.querySelector('#prefix').innerHTML;
	for (a = document.querySelectorAll('[data-prefix]'), i = 0; a[i]; ++i) a[i].innerHTML = prefix;

	// update price formatting
	// =======================

	for (a = document.querySelectorAll('span[data-prefix] + span'), i = 0; a[i]; ++i) if (document.activeElement != a[i]) a[i].innerHTML = parsePrice(parseFloatHTML(a[i]));
}

/* On Content Load
/* ========================================================================== */

function onContentLoad() {
	updateInvoice();

	var
	input = document.querySelector('input'),
	image = document.querySelector('img');

	function onClick(e) {
		var element = e.target.querySelector('[contenteditable]'), row;

		element && e.target != document.documentElement && e.target != document.body && element.focus();

		if (e.target.matchesSelector('.add')) {
			document.querySelector('table.inventory tbody').appendChild(generateTableRow());
		}
		else if (e.target.className == 'cut') {
			row = e.target.ancestorQuerySelector('tr');

			row.parentNode.removeChild(row);
		}

		updateInvoice();
	}

	function onEnterCancel(e) {
		e.preventDefault();

		image.classList.add('hover');
	}

	function onLeaveCancel(e) {
		e.preventDefault();

		image.classList.remove('hover');
	}

	function onFileInput(e) {
		image.classList.remove('hover');

		var
		reader = new FileReader(),
		files = e.dataTransfer ? e.dataTransfer.files : e.target.files,
		i = 0;

		reader.onload = onFileLoad;

		while (files[i]) reader.readAsDataURL(files[i++]);
	}

	function onFileLoad(e) {
		var data = e.target.result;

		image.src = data;
	}

	if (window.addEventListener) {
		document.addEventListener('click', onClick);

		document.addEventListener('mousewheel', updateNumber);
		document.addEventListener('keydown', updateNumber);

		document.addEventListener('keydown', updateInvoice);
		document.addEventListener('keyup', updateInvoice);

		input.addEventListener('focus', onEnterCancel);
		input.addEventListener('mouseover', onEnterCancel);
		input.addEventListener('dragover', onEnterCancel);
		input.addEventListener('dragenter', onEnterCancel);

		input.addEventListener('blur', onLeaveCancel);
		input.addEventListener('dragleave', onLeaveCancel);
		input.addEventListener('mouseout', onLeaveCancel);

		input.addEventListener('drop', onFileInput);
		input.addEventListener('change', onFileInput);
	}
}

window.addEventListener && document.addEventListener('DOMContentLoaded', onContentLoad);

//------------------------------------------

//------------------------------------------

function serial_file() {
	document.getElementById("serial").value = Date.now();
}

function un_serial_file() {
	document.getElementById("serial").value = "";
}
//---------------------------------------------------------

var today = new Date();
var dd = today.getDate();
var mm = today.getMonth()+1; //January is 0!
var yyyy = today.getFullYear();

if(dd<10) {
    dd='0'+dd;
} 

if(mm<10) {
    mm='0'+mm;
} 



today = dd+'/'+mm+'/'+yyyy;
today_form = yyyy+'-'+dd+'-'+mm+' ';
var serial = Date.now();

//-----------------------------------------------------
function myprint() {
    window.print();
}
//-----------------------------------------------------

</script>

</head>
<link rel="license" href="http://www.opensource.org/licenses/mit-license/">
<body id="form">
   
   <%
     Customer_Dao obj=new Customer_Dao();
     String cust_id=request.getParameter("custid");
      ArrayList<Customer_Pojo> data=new ArrayList<Customer_Pojo>();
      data=obj.FetchC(cust_id);
   
   %>
      
    <header>
      <span>
        <img alt="logo" src="img/logo_1.png" style="width:50%; height:60px;position: relative;left: 35%;top: 30px;"class="center logo" id="logo" title="Mahindrakar Agency" draggable="false" style="-moz-user-select: none;">
        
      </span>
    </header>
	<br>
        <br><br>
    <article class="invoicebody">
	    <div class="left_info">
             <span>Enquiry_ID : </span><label><%=request.getParameter("enid")%></label>
                <%
                session.setAttribute("enqid",request.getParameter("enid"));
                %>
                <br>
                <br>
               
                <%
                for(Customer_Pojo obj1:data)
                {
                %>
                
                <span>Name :   </span><label><%=obj1.getCUST_NAME()%></label>
                
                <br>
                <span>Address :   </span><label><%=obj1.getCUST_ADDRESS()%></label>
                <br>
                <span>Contact :   </span><label><%=obj1.getMOB_NO()%></label>
                <br>
                <span>Email :   </span><label><%=obj1.getCUST_EMAIL()%></label>
                <br>
                <% } %>  
            </div>
        
      <table class="meta" id="top_data_table">
         <tbody>
             <tr class="" id="invoice_number_row" hidden="">
            <th class="bold"><span class="invoice" id="invoice" >Invoice&nbsp;#</span></th> 
            <td id="time"></td>
          </tr>

          <tr id="daterow">
            <th class="bold"><span class="date" id="date">Date</span></th>
            <td><span contenteditable=""><input type="date" id="theDate" ></span></td>
          </tr>

          <tr class="" id="total_block">
            <th class="bold"><span class="amount" id="amount">Amount</span></th>
            <td><span id="prefix">&#8377;</span><span></span></td>
          </tr>

        </tbody>
      </table>
	<div class="min_height">
      <table class="inventory">
        <thead>
          <tr>
            <th class="bold">
              <span class="item">Item</span>
            </th>
            <th class="bold">
              <span class="description" id="description">Description</span>
            </th>
            <th class="bold">
              <span class="rate" id="rate">Rate</span>
            </th>
            <th class="bold">
              <span class="quantity" id="quantity">Quantity</span>
            </th>
            <th class="bold">
              <span class="price" id="price">Price</span>
            </th>
          </tr>
        </thead>

        <tbody>
          <tr>
            <td>
              <a class="cut" title="Remove Item">-</a>
              <span contenteditable id="it"></span>
            </td>
            <td>
              <span contenteditable id="des"></span>
              </td>
            <td>
              <span data-prefix>&#8377;</span>
              <span contenteditable id="rt">0.00</span>
            </td>
            <td>
              <span contenteditable id="qut">1</span>
            </td>
            <td>
              <span data-prefix>&#8377;</span><span >0.00</span>
            </td>
          </tr>
        </tbody>
      </table>
      <a class="add noprint" title="Add Item">+</a>
      <div class="left_btn">
      		<!---button class="mah_btn" onclick="myprint()">Print</button>-->
      		<button class="mah_btn" onClick="window.location.reload()">Reset</button>
      		<button class="mah_btn" onClick="Test()">Save</button>

      </div>
      </div>
      <div class="right_tax">
      <table class="balance" id="balance">
        <tbody>
            <tr>
            <th class="bold">
              <span class="subtotal" id="subtotal">Subtotal</span>
            </th>
            <td>
              <span>&#8377;</span><span id="sub">0.00</span>
            </td>
          </tr>
         

          <tr>
            <th class="bold">
              <span class="tax" id="tax" contenteditable="">Include GST &nbsp;</span>
              <span contenteditable="">12</span>%
            </th>
            <td>
              <span>&#8377;</span><span id="gst1">0.00</span>
            </td>
          </tr>
        <script>

            function Test()
            {
              
                var items=new Array(item_count);
                var rate=new Array(item_count);
                var qut=new Array(item_count);
                
                var firstitem=document.getElementById("it").innerHTML;
                var firstrate=document.getElementById("rt").innerHTML;
                var firstqut=document.getElementById("qut").innerHTML;
                
         var total=document.getElementById("tt").innerHTML;
         var sub=document.getElementById("sub").innerHTML;
       
                alert("Total count  : "+item_count);
                var j=1;
                for (i = 0; i<item_count;i++) {
                   items[i]=document.getElementById("item"+j).innerHTML;
                   rate[i]=document.getElementById("rate"+j).innerHTML;
                   qut[i]=document.getElementById("qut"+j).innerHTML;
               

                firstitem=firstitem+"-"+items[i];
                firstrate=firstrate+"-"+rate[i];
                firstqut=firstqut+"-"+qut[i];
             

                j++;
         
        }
        var gst1=document.getElementById("gst1").innerHTML;
        
  window.location.href="Test.jsp?items="+firstitem+"&rate="+firstrate+"&qut="+firstqut+"&total="+total+"&gst="+gst1+"&sub="+sub;
      }
            </script>
          <tr>
            <th class="bold">
              <span class="total" >Total</span>
            </th>
            <td>
              <span>&#8377; </span><span id="tt">0.00</span>
            </td>
          </tr>

        </tbody>
      </table> 
      </div>     
	</div>
    </article>
  

<div class="Signature">
	<ul>
		<li>Client Signature</li>
		<li>Owner Signature</li>
	</ul>
</div>

    <br><br>
<div class="size">
    <p><big><u>Terms And Condition *</u></big></p>
<br>
	<p>1) This Quotation is based on oral discussion, at the time of packing and loading there will be chance of increasing in
amount (15-20% of total amount) in case of increasing in items.</p>
        <p>2) Carrying Liquor, Gas Cylinder, Acid, any types of Liquid, Explosive and Illegal Articles are Totally Prohibited.</p>
<p>3) Minimum 10 Liter fuel Should be Available in the Car to run up to the Car Carrier Point and same way from Car
Carrier Point to the Destination.</p>
<p>4)We don't Undertake Electrical, Carpentry & Plumbing Job, we will Provide on the Basis of Availability and will
Charge Extra.</p>
<p>5)After Local Shifting, Corrugated Boxes will Be Taken Back on the Same Day.</p>
<p>6)We are not respoinsible for dismantling and assembling of imported furnitures and if we do the same as per your
request it will charge extra cost.</p>

<p>7)Please Keep Your Cash/ Jewelry in Your Custody.</p>
<p>8)If you will Call our Packers on Second day for your Convenience, Additional Charge on A/C. of Conveyance of
We request you to pay us 90% advance and remaining 10% after work completion.</p>
<p>9) Please be noted while Carrier Risk, No Individual Policy/Receipt, from the Insurance Company, will be given.</p>
<p>10)For Monsoon, Rainy Season, Foggy Weather, Riots, Vehicle Breakdown
 We will Charge for any Extra Services other that mentioned with the Estimate.</p>
</div>
<script>

(function () {
    function checkTime(i) {
        return (i < 10) ? "0" + i : i;
    }

    function startTime() {
        var times = new Date(),
        
            hh = checkTime(times.getHours()),
            mm = checkTime(times.getMinutes()),
            ss = checkTime(times.getSeconds()),
            yy = checkTime(times.getFullYear().toString(10).substring(2, 4)),
            MM = checkTime(times.getMonth() + 1),
            dd = checkTime(times.getDate())
            ;
        document.getElementById('time').innerHTML = yy + "" + MM + "" + dd + "" + hh + "" + mm + "" + ss ;
        t = setTimeout(function () {
            startTime1()
        }, 500);
    }
    startTime();
})();

var date = new Date();

var day = date.getDate();
var month = date.getMonth() + 1;
var year = date.getFullYear();

if (month < 10) month = "0" + month;
if (day < 10) day = "0" + day;

var today = year + "-" + month + "-" + day;


document.getElementById('theDate').value = today;
</script>
