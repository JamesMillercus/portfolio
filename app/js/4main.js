// Post Plane:
// re-export start up animation as mp4 + ogg with handbrake
// Get Izzy to sense check project text

//PHASE ONE
//1. Fix all bugs (check on different browsers with Kerve browser stack login details)
//2. Check on windows/android mobile devices (problem with android selecting mobile version of site)
//3. Fix bug where all videos reveal once clicked + screen resize reset scroll (like when vid is clicked)
//4. Recode site so that is runs more effieciently (constructor functions)

// THINGS TO CHECK
//1. Video Player Functionality: Allow pause button to work on tablet (check that this isn't just on my ipad)

//PHASE TWO
//1. Create node back end and use johnny five for arduino code + a templating engine to serve bespoke message

//PHASE THREE
//1. use leapjs to make portfolio useable with the leap motion + myo band + wordpress

//** CHECK POSITIONS **//
function checkPositions() {
	console.log(Portfolio.setHitBoxSizes());
	//1: RESET DATA VARIABLES
    // set size + position of each page within the website container
	$('#homepage').css({'margin-left': BrowserInfo.browserSize()[0] + 'px', 'margin-top': BrowserInfo.browserSize()[1] + 'px'});
	// set size + position of background
	$('#container').css({'height':BrowserInfo.browserSize()[1]*3 +'px ', 'width':BrowserInfo.browserSize()[0]*3 + 'px', 'margin-left': '-'+BrowserInfo.browserSize()[0] + 'px', 'margin-top': '-'+BrowserInfo.browserSize()[1] + 'px'}); 	

	//2 : CHECK SIZE OF SCREEN AND CALCULATE NEW SIZES OF CONTENT
	//for each screen size (4), call the checkSize function
	for(var windowResizeNumber = 0;windowResizeNumber < BrowserInfo.browserResizer()[0].length; windowResizeNumber++) checkSize(windowResizeNumber); 
	//** CHECK SIZE OF SCREEN + LOAD NEW SIZES **//
	function checkSize(x){
		//based on what screen size you are on, load in different arrays that resize the divs on the screen
		if(BrowserInfo.browserSize()[0] > BrowserInfo.browserResizer()[0][x] && BrowserInfo.browserSize()[0] < BrowserInfo.browserResizer()[1][x]) {
			//set the size of all the gifs
			if(!isMobile && !isTablet) Portfolio.setGifSizes($('#homepage').width()/Portfolio.deviceSpecificImgResizer.backgroundWImageResizerArr[x],$('#homepage').height()/Portfolio.deviceSpecificImgResizer.backgroundHImageResizerArr[x]);
			//if tablet set the sizes to load the tablet array
			if(isTablet) Portfolio.setGifSizes($('#homepage').width()/Portfolio.deviceSpecificImgResizer.backgroundWImageResizerArr[2],$('#homepage').height()/Portfolio.deviceSpecificImgResizer.backgroundHImageResizerArr[2]);
			//if mobile set the sizes to load the mobile array
			if(isMobile) Portfolio.setGifSizes($('#homepage').width()/Portfolio.deviceSpecificImgResizer.backgroundWImageResizerArr[3],$('#homepage').height()/Portfolio.deviceSpecificImgResizer.backgroundHImageResizerArr[3]);
			//load in desktop sizes
			desktopImageSizes = [/*topPagePos*/0.5, /*leftPagePos*/ .76, /*rightPagePos*/ 1.675, /*bottomPagePos*/ 1.7, /*leftCornerPos*/ 1.5, /*rightCornerPos*/ 1.734, /*centralPos*/ 1.272, /*middlePagePos*/ 1.32, /*large hitbox height */ Portfolio.gifSizes['backgroundHSize']*4, /*large hitbox width */ Portfolio.gifSizes['backgroundWSize']*4, /*med hitbox width */Portfolio.gifSizes['backgroundWSize']*3, /*small hitbox height */Portfolio.gifSizes['backgroundHSize'] * 1.8, /*small hitbox width */Portfolio.gifSizes['backgroundWSize'] * 2];
			//load in small desktop sizes
			smallDesktopImageSizes = [/*topPagePos*/0.58, /*leftPagePos*/.72, /*rightPagePos*/1.72, /*bottomPagePos*/ 1.74, /*leftCornerPos*/1.5, /*rightCornerPos*/ 1.77,/*centralPos*/ 1.4,/*middlePagePos*/1.345,/*large hitbox height */Portfolio.gifSizes['backgroundHSize']*4, /*large hitbox width */Portfolio.gifSizes['backgroundWSize']*4,/*med hitbox width */Portfolio.gifSizes['backgroundWSize'] *1.5, /*small hitbox height */Portfolio.gifSizes['backgroundHSize'] * 1.8, /*small hitbox width */ Portfolio.gifSizes['backgroundWSize'] * 2];
			//load in tablet sizes
			tabletImageSizes = [/*topPagePos*/ 0.65, /*leftPagePos*/.42, /*rightPagePos*/ 1.78, /*bottomPagePos*/1.75,/*leftCornerPos*/2.3,/*rightCornerPos*/ 1.77,/*centralPos*/ 1.4,/*middlePagePos*/1.375,/*large hitbox height */Portfolio.gifSizes['backgroundHSize']*4,/*large hitbox width */Portfolio.gifSizes['backgroundHSize']*4,/*med hitbox width */Portfolio.gifSizes['backgroundWSize'],/*small hitbox height */Portfolio.gifSizes['backgroundHSize'] * 1.8, /*small hitbox width */ Portfolio.gifSizes['backgroundWSize'] * 2];
			//load in mobile sizes
			mobileImageSizes = [/*topPagePos*/.22,/*leftPagePos*/.42,/*rightPagePos*/1.78, /*bottomPagePos*/1.635,/*leftCornerPos*/8,/*rightCornerPos*/1.66,/*centralPos*/1.348,/*middlePagePos*/1.375,/*large hitbox height */Portfolio.gifSizes['backgroundHSize']*4,/*large hitbox width */Portfolio.gifSizes['backgroundHSize']*4,/*med hitbox width */Portfolio.gifSizes['backgroundWSize'], /*small hitbox height */Portfolio.gifSizes['backgroundHSize'] * 1.8, /*small hitbox width */ Portfolio.gifSizes['backgroundWSize'],1.348];
			//store all loaded arrays into a larger array
			imageResizingArr = [desktopImageSizes, smallDesktopImageSizes, tabletImageSizes, mobileImageSizes];
			//set the current size of the content based on what size screen was loaded
			if(!isMobile && !isTablet) currentSize = imageResizingArr[x];
			//if tablet load the tablet array
			if(isTablet) currentSize = imageResizingArr[2];
			//if mobile load the mobile array
			if(isMobile) currentSize = imageResizingArr[3];
			//for each item in the array, call a function which will sort through the data of the array
			for(var resizeNumber = 0; resizeNumber < desktopImageSizes.length; resizeNumber++) resizeImages(resizeNumber,currentSize[resizeNumber]);
		}
		// write code that hides gifs and reveals iframes once all videos have been loaded in.
	}

	// 3: ** SORT POSITION DATA FROM ARRAY AND ASSIGN NEW ELEMENT POSITIONS **//
	function resizeImages(resizedNumber, newSize){
		//store chosen array data in a new array
		imageSizeVariables[resizedNumber] = newSize;
		//set the height of all the content
	    navHeight = [imageSizeVariables[8], imageSizeVariables[8], imageSizeVariables[8], imageSizeVariables[8], imageSizeVariables[8], imageSizeVariables[11], imageSizeVariables[11], imageSizeVariables[8]];
		//set the width of all the content
		navWidth = [imageSizeVariables[9], imageSizeVariables[9], imageSizeVariables[9], imageSizeVariables[9], imageSizeVariables[10], imageSizeVariables[9], imageSizeVariables[9], imageSizeVariables[10]]; 
		//set the margin left
		navMarginLeft = [BrowserInfo.browserSize()[0]/imageSizeVariables[4], BrowserInfo.browserSize()[0]*imageSizeVariables[5], BrowserInfo.browserSize()[0]/imageSizeVariables[4], BrowserInfo.browserSize()[0]*imageSizeVariables[5], BrowserInfo.browserSize()[0]*imageSizeVariables[6], BrowserInfo.browserSize()[0]*imageSizeVariables[1], BrowserInfo.browserSize()[0]*imageSizeVariables[2], BrowserInfo.browserSize()[0]*imageSizeVariables[6]];
		//set the margin top of all the content
		navMarginTop = [BrowserInfo.browserSize()[1]*imageSizeVariables[0], BrowserInfo.browserSize()[1]*imageSizeVariables[0], BrowserInfo.browserSize()[1]*imageSizeVariables[3], BrowserInfo.browserSize()[1]*imageSizeVariables[3], BrowserInfo.browserSize()[1]*imageSizeVariables[0], BrowserInfo.browserSize()[1]*imageSizeVariables[7], BrowserInfo.browserSize()[1]*imageSizeVariables[7], BrowserInfo.browserSize()[1]*imageSizeVariables[3]];
	}

	//4: SET NEWLY ASSIGNED IMAGE SIZES

	//set the size of the background image based on the screen size
	if(BrowserInfo.browserSize()[0] < 1900) $('.backgroundImage').css({'width': Portfolio.gifSizes['backgroundWSize'] + 'px ', 'height': Portfolio.gifSizes['backgroundHSize'] + 'px'});
	else if(BrowserInfo.browserSize()[0] > 1900 || BrowserInfo.browserSize()[1] > 1100) $('.backgroundImage').css({'width':Portfolio.gifSizes['backgroundWSize']/1.5 +'px ', 'height':Portfolio.gifSizes['backgroundHSize']/1.5+ 'px'});
 	//get size of the outer btn holder for calculations on vertical/horizontal centering
    outerBtnHolderWSize = $('#outerBtnHolder').width(), outerBtnHolderHSize = $('#outerBtnHolder').height(), innerBtnHolderHSize = $('#innerBtnHolder').height(), middleImagesHeight = $('#middleImages').height(); 
	//calculate the vertical center
    outerBtnHolderTop = ($('#homepage').height()-$('#outerBtnHolder').height())/2, innerBtnHolderTop = (outerBtnHolderHSize-innerBtnHolderHSize)/2;  
    // Selected page background image grows by 1.2 times its current size and other pages have their size divided by 1.8
	growBackgroundWSize = Portfolio.gifSizes['backgroundWSize']*1.3, shrinkBackgroundWSize = Portfolio.gifSizes['backgroundWSize']/1.9;
	//if a video hasn't been clicked and the browser window is resized
    if(clickedVideo == false){
    	$('#container').css({'opacity':1,'display':'block'});
    	// $('.videoContainer').css({'opacity':''});
    	//reset and re-center all postions of all content
	    $('#outerBtnHolder').css({'width': '', 'height': '', 'top':outerBtnHolderTop+'px','margin-left':'', 'margin-right':'', 'left':'', 'right':''}), $('#innerBtnHolder').css({'width':'', 'height': '','margin-left':'', 'margin-right':'', 'left':'', 'right':'','top':innerBtnHolderTop,'bottom':''});
	    //for each portfolio item on the page, call a function that will resize them based on screen size
    	for(var portNumber = 0;portNumber<navMarginLeft.length;portNumber++) resizePortfolio(portNumber);
    	//** RESIZE ALL CONTENT**//
		function resizePortfolio(portfolioNumber){
			$('#portfolio'+ (portfolioNumber+1) +'page').css({'height':navHeight[portfolioNumber] +'px', 'width':navWidth[portfolioNumber] +'px', 'margin-left': navMarginLeft[portfolioNumber] +'px', 'margin-top': navMarginTop[portfolioNumber] +'px'});		
		}
		//center the middle two portfolio items
	    $('#middleImages').css({'top':(innerBtnHolderHSize - middleImagesHeight)/2 +'px'});
	    $('#heroText').css({'font-size':$('#centerImage').width()/8 +'px', 'top':($('#centerImage').height()-$('#heroText').height())/2});
	    //reveal social media buttons
	    if(lastScrolled != "newUser") {
	    	$( "#linksTop, #linksBottom" ).stop().animate({'opacity': 1});
	    	$('#heroText').css({'opacity':1, 'display':'block'});
	    	$('.videoContainer').css({'opacity': 0});
		    $('.content').css({'opacity': 0});
	    	lastScrolled ='';
	    }else $('#heroText').css({'opacity':0, 'display':'none'});
		//if resize the browser window whilst scrolled over a menu item then activate complete home page reset
		if(isHover!= 'container' && lastClicked == '') resetToHome('reset');
		// $('#heroText').css({'top':($('#centerImage').height()-$('#heroText').height())/2});
		activateHeroAnimation();
    }else{
    	//if video has been clicked and page then resized

    }
    if(lastScrolled == "newUser"){
	    $('#topImage, #bottomImage, #portfolio1, #portfolio2, #portfolio3, #portfolio4, #portfolio6, #portfolio7').css({'opacity':0});
    }
	// //if there is a video that can be played, the window size is for desktops and if the use has just loaded the page then play video. 
	// if(!!v.canPlayType == true && windowSizeWidth > 1024 && lastScrolled == "newUser") animateHome(); //change this to animateHome when not in dev mode
	// //else load the page without video
	// else if(!!v.canPlayType == false || windowSizeWidth < 1024 || isMobile || $("video").get(0).paused != true) staticHome();
}

function startWebsite(){
	$("#loadScreen, #loadPercentage").stop().animate({'opacity': 0},{ duration: 2000,
    specialEasing: {
      width: "linear",
      height: "easeOutBounce"
    }, complete: function(){ 
    	// var v = window.document.createElement("video");
		//if there is a video that can be played, the window size is for desktops and if the use has just loaded the page then play video. 
	    if(!!document.getElementById("startUpVid").canPlayType == true && BrowserInfo.browserSize()[0] > 1024 && lastScrolled == "newUser") animateHome(); //change this to animateHome when not in dev mode
	    //else load the page without video
	    else if(!!document.getElementById("startUpVid").canPlayType == false || BrowserInfo.browserSize()[0] < 1024 || isMobile) staticHome();
	}}); 
}

//** MAIN SECTION OF LOGIC **//

//on document ready
$(document).ready(function () {

	// vid = document.getElementById("startUpVid");
	// // console.log(vid);

	// vid.ontimeupdate = function() { myFunction() };
	// function myFunction() {
	// 	// if(vid.currentTime >= .5) $("#centerImage").addClass("designBackground");
	// }

	//when all navigation images are loaded, call checkPositions()
    $('.backgroundImage').imagesLoaded().done( function( instance ) {
	    // console.log('all images successfully loaded');
            checkPositions();
    });
	// when browser is resized, call checkPositions()
	$( window ).resize(function() {
  		checkPositions();
		allowAnimation = false;
	    lastScrolled = '';
	    clickedVideo = false; 
	});
	$(window).on( "orientationchange", function( event ) { checkPositions(); });

	// on mouse over of navigation button
	$(".animatingPage").mouseenter(function(){
	    isHover = $(this).attr('id');
	    //Detect what navigation button is being hovered, move the background to center the selected page 
	    for(var pageNumber = 0;pageNumber<(Portfolio.totalNumberOfItems());pageNumber++) if(isHover == 'portfolio'+pageNumber+'page' && lastScrolled != '' && allowAnimation == true) scrollPortfolio(isHover, pageNumber-1);	   
	});
	//on mouse click
	$(".animatingPage").click(function(){
		if(isHover == "container" && isMobile) openPortfolio(wasPlayed);
		
		if(isTablet) {
			//open video full screen for ipad
		}
		
		//open the selected portfolio item
		for(var pageNumber = 0;pageNumber<(Portfolio.totalNumberOfItems());pageNumber++) if(isHover == 'portfolio'+pageNumber+'page' && lastScrolled != '') openPortfolio(isHover);	
	});

	$("#videoExit").click(function(){
		exitFullScreen();
	});

	//on mouse out of navigation button
	$(".animatingPage").mouseleave(function(){ 
		// console.log("lastScrolled = " + lastScrolled);
		if(lastScrolled != 'container') resetToHome(isHover); 
	});

	$(document).keyup(function(e) {
  		if (e.keyCode === 27) exitFullScreen();
	});

	$( "html" ).keypress(function( event ) {	
		for(lowerCase = 0; lowerCase < keyboardArr.length; lowerCase+=2){
		  	upperCase = (lowerCase+1);
		  	count++;
			lastClicked = "portfolio"+count+"page";
		  	keyboardEvent=event.which;
			currentPosX = -BrowserInfo.browserSize()[0];
			currentPosY = -BrowserInfo.browserSize()[1];
		  	triggerResponse(lastClicked,keyboardEvent);
		}
		// console.log(keyboardEvent);
	}); 
	  
	function triggerResponse(newHover, keyp){
		if ( keyp == keyboardArr[lowerCase] || keyp == keyboardArr[upperCase] ) {
			var counter = count-1;
			if(clickedVideo==false && counter<(keyboardArr.length/2)-1){
				if(newHover != isHover){
				    resetToHome(newHover);
				  	isHover = newHover;
					lastScrolled = '#' + newHover.substring(0,10);
					scrollPortfolio(newHover, counter);	
				}else openPortfolio(isHover);
			}else exitFullScreen(); 
			if (counter==(keyboardArr.length/2)-1 && lastScrolled != '') resetToHome(newHover);
		}
		if(count>=(keyboardArr.length/2)) count =0;
	}

	//** RESET TO HOME POSITION **//
	function resetToHome(lastPage){
		// if browser is above 1024 (is a desktop) and a video hasn't been clicked
		if(clickedVideo == false && BrowserInfo.browserSize()[0] > 1024 && !isMobile){
			// $(".staticImage").css({'opacity': 1});
			// Get the page that was just scrolled out and shrink its background image to its normal size
		    $(lastScrolled).removeClass("staticImage").addClass("backgroundImage");
		    // $(lastScrolled + 'page .content').stop().animate({"opacity":0});
			$('.videoContainer').stop().animate({"opacity": 0});
			//if videos are loaded then pause all of them
			if(isReady == true) pauseAllVideos();
			//if you've just scrolled out of a nav button
			// console.log("Last Scrolled (musn't be '') = " + lastScrolled);
			if(lastPage != 'reset' && lastScrolled != ''){
				// animation starts
			    if(!isMobile) isAnimating = true;
			    // console.log("background W size SLUT = " + backgroundWSize+'px');
				if(BrowserInfo.browserSize()[0] < 1900) $(".backgroundImage").stop().animate({'width': Portfolio.gifSizes['backgroundWSize']+'px'});
    			else if (BrowserInfo.browserSize()[0] > 1900 || BrowserInfo.browserSize()[1] > 1100) $(".backgroundImage").stop().animate({'width': Portfolio.gifSizes['backgroundWSize']/1.5+'px'});
				//Hide the scrolled out pages content back to opacity 0
			    // $('#' +lastPage + ' .content').stop().animate({'opacity': 0});
			    $('.content').stop().animate({'opacity': 0});
				//Make the container holding the nav buttons go back to its original size and position
				$('#middleImages').stop().animate({'top':(innerBtnHolderHSize - middleImagesHeight)/2 +'px'});
				$('#innerBtnHolder').stop().animate({'top':innerBtnHolderTop +'px'});
				$('#outerBtnHolder').stop().animate({'width': outerBtnHolderWSize +'px', 'height': outerBtnHolderHSize+'px','margin-right':'','margin-left':'', 'top':outerBtnHolderTop+'px'}); 
				if(lastScrolled != 'newUser') $( "#linksTop, #linksBottom" ).stop().animate({'opacity': 1});
				if(lastScrolled == "#portfolio5") {
					$('#portfolio8page').css({"display":"none"});
					setTimeout(function(){ $('#portfolio8page').css({"display":"block"}); }, 700);	
				}
				else if(lastScrolled == "#portfolio8"){
				 $('#portfolio5page').css({"display":"none"});
					setTimeout(function(){ $('#portfolio5page').css({"display":"block"}); }, 700);	
				}
				//if another navigation item isn't selected, then set hover state to container and animate by normal mouse position
			    for(var pageNumber = 1;pageNumber<8;pageNumber++){
					if(isHover != 'portfolio'+pageNumber+'page'){ 
						isHover = 'container';
				        if(allowAnimation == true) $('#container').stop().animate({'margin-left': currentPosX+'px', 'margin-top': currentPosY+'px'},{complete: function(){ isAnimating=false; }});
					}
				}
				// console.log("animate page to home position")
			//if you've just resized the screen.
			}else{
				//if the user isn't using special electronics invitation (keyboard inputs)
				if(lastClicked == ''){
				    $(lastScrolled).removeClass("staticImage").addClass("backgroundImage");
				    if(BrowserInfo.browserSize()[0] < 1900) $(".backgroundImage").css({'width': Portfolio.gifSizes['backgroundWSize']+'px'});
    				else if (BrowserInfo.browserSize()[0] > 1900 || BrowserInfo.browserSize()[1] > 1100) $(".backgroundImage").css({'width': Portfolio.gifSizes['backgroundWSize']/1.5+'px'});
				    $('#container').css({'opacity': 0, 'margin-left': currentPosX+'px', 'margin-top': currentPosY+'px'});
				    $('.videoContainer').css({'opacity': 0});
				    $('.content').css({'opacity': 0});
				    // $(lastScrolled).css({"opacity":1});
				    setTimeout(function(){
					    isAnimating=false;
					    $(lastScrolled + 'page .content').css({'opacity':0});
					    $('#container').css({'opacity': '1', 'margin-left': currentPosX+'px', 'margin-top': currentPosY+'px'});
					    isHover='container';
					    checkPositions();
					    // console.log("reset");
					    // $('body').css({'background-color': 'orange'});
					}, 50);		    
					//if the user is navigating the site with the electronics invitation (keyboard inputs)
				} else{
				    lastScrolled = 'container';
				    isHover='container';
					checkPositions();
				}
			}
		//if a video has been clicked and then you resize the screen, then return to the standard screen navigation
		} else {
			// $('body').css({'background-color': 'red'});
		     // players[lastVideo].stopVideo();
			if(!isMobile && !isTablet) isHover = 'container';
		}
	}

	loadIframes();
});