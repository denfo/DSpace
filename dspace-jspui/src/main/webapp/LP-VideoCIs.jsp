<%--

    The contents of this file are subject to the license and copyright
    detailed in the LICENSE and NOTICE files at the root of the source
    tree and available online at

    http://www.dspace.org/license/

--%>
<%--
  - About page JSP
  -
  - Attributes:
  -    ?
  --%>

<%@page import="org.dspace.core.Utils"%>
<%@page import="org.dspace.content.Bitstream"%>
<%@ page contentType="text/html;charset=UTF-8" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ taglib uri="http://www.dspace.org/dspace-tags.tld" prefix="dspace" %>

<%@ page import="java.io.File" %>
<%@ page import="java.util.Enumeration"%>
<%@ page import="java.util.Locale"%>
<%@ page import="javax.servlet.jsp.jstl.core.*" %>
<%@ page import="javax.servlet.jsp.jstl.fmt.LocaleSupport" %>
<%@ page import="org.apache.commons.lang.StringUtils" %>
<%@ page import="org.dspace.core.I18nUtil" %>
<%@ page import="org.dspace.app.webui.util.UIUtil" %>
<%@ page import="org.dspace.core.ConfigurationManager" %>

<%
    Locale sessionLocale = UIUtil.getSessionLocale(request);
    Config.set(request.getSession(), Config.FMT_LOCALE, sessionLocale);

    boolean feedEnabled = ConfigurationManager.getBooleanProperty("webui.feed.enable");
    String feedData = "NONE";
    if (feedEnabled)
    {
        feedData = "ALL:" + ConfigurationManager.getProperty("webui.feed.formats");
    }
%>

<dspace:layout locbar="nolink" titlekey="jsp.about.title" feedData="<%= feedData %>">

    <div class="example">
        <p><a href="/">Home</a> <span class="text-muted">&raquo;</span> <a href="/sim-example.jsp">Simulation Example</a> <span class="text-muted">&raquo; Video: Confidence Interval for a Population Mean</span></p>

	<div class="row">  
	    <div class="col-md-8">
	    
		<h1>Video: Confidence Interval for a Population Mean</h1>
		
		<div class="row description">
		    <div class="col-md-12">
			<img class="pull-left zoology-fish" src="http://www.zoology.ubc.ca/~whitlock/kingfisher/Common/Images/fish.svg" width="220">
			
			<p class="intro-text">This video gives students a brief and simplified overview of statistics. This resource is especially useful for those outside of math-heavy disciplines to get a high-level understanding of statistics without the overwhelm typically associated introductory videos.</p>
			
			<p class="text-center access-btn"><a class="btn btn-success btn-md">Access Resource</a></p>
		  
		    </div>
		</div> 
	    
	    </div>
	    
	    <div class="col-md-4 value-prop">
	    
		<div class="panel panel-info">
		    <div class="panel-heading">
			<h3 class="panel-title"><i class="glyphicon glyphicon-stats"></i> About StatSpace</h3>
		    </div>
		    <div class="panel-body">
			<p>StatSpace brings together vetted open education materials for use across disciplines. Members of our community can <strong>search and use materials</strong> in the repository, <strong>contribute materials</strong> of their own, and <strong>evaluate materials</strong> they use.</p>
			<label>Search StatSpace now:</label>
			<%-- Search Box --%>
			<form method="get" action="<%= request.getContextPath() %>/simple-search">
			    <div class="input-group">
				<input type="text" class="form-control" placeholder="Enter keywords" name="query" id="tequery"/>
				<span class="input-group-btn">
				    <button type="submit" class="btn btn-primary">
					<span class="glyphicon glyphicon-search"></span>
				    </button>
				</span>
			    </div>
			</form>		
		    </div>
		</div>
	    
	    </div>			
	</div>
	
	<div class="row">
	    <div class="col-md-12">
		<div class="divider"></div>
	    </div>
	</div>
	
	<div class="row details">
	    <div class="col-md-8">
		<h2>Prerequisite Knowledge</h2>
		<p>Students should&colon;</p>
        <ul>
            <li>Be able to identify and distinguish between a population and a sample, and between parameters and statistics;</li>
            <li>Be familiar with methods of summarizing data sets, such as mean, standard deviation and histograms;</li>
            <li>Be able to recognize probability models as distributions with shape, centre, and spread particularly the Normal distribution</li>
            <li>Be able to explain the concepts of sampling variability and sampling distribution.</li>
        </ul>
		<h2>Learning Objectives</h2>
		<ul>
            <li>Interpret a confidence interval and confidence level</li>
            <li>Identify features that determine the width of a confidence interval.</li>
		</ul>
		
		<h2>Suggested uses</h2>
            <p>These apps are intended to be used in a number of ways&colon;</p>
		<ul>
            <li>Before class: Students watch the video before class, giving them the flexibility to engage with the video in the way that suits them (pausing, rewinding). Students are primed for class and lecture time can be spent applying that knowledge in engaging and collaborative ways. </li>
            <li>After class: The students can watch the video after they have learned the material in lecture. The video could be used as a refresher of the material before an exam or to review concepts they didn’t understand in class.</li>
		</ul>
		
		<h2>Complementary materials</h2>
		<ul>
            <li><a href="http://www.zoology.ubc.ca/~whitlock/kingfisher/CIMean.htm">Web visualization: Confidence intervals for the mean<span class="glyphicon glyphicon-new-window"></span></a></li>
            <li>Activity: Understanding confidence intervals</li>
		</ul>
            
        <h2>About this resource</h2>
            <p>
                <b>Written by&colon;</b> Mike Marin, Zachary Rothman, &amp; Stephen Gillis<br>
                <b>Performed by&colon;</b> Mike Marin<br>
                <b>Puppets built and Performed&colon;</b> Dusty Hagerud<br>
                <b>Production Design and Conceptual Drawings&colon;</b> Jelena Sihvonen<br>
                <b>Camera&colon;</b> Paul Milaire, Zachary Rothman, &amp; Stephen Gillis<br>
                <b>Editing&colon;</b> Stephon Gillis<br>
                <b>Visual Effects&colon;</b> Paul Milaire<br>
                <b>Audio Edit and Mix&colon;</b> Stephan Gills &amp; Cornelius Wolinsky<br>
                <b>UBC Intro Stats Project Team&colon;</b> Mike Marin, Nancy Heckman, Bruce Dunham, Eugenia Yu, Melissa Lee, Michael Whitlock, Gaitri Yapa, Fred Cutler, Andrew Owen, Diana Whistler, Andy Leung, Gillian Gerhard, &amp; Noureddine Elouazizi<br>
                <b>Special Thanks&colon;</b> Gary Rosborough, Saeed Dyanatkar, Andrew Wang, David Li, Kian Marin, Ladan Hamadani, &amp; UBC Statistics Department<br>
                <b>Produced and Directed by&colon;</b> Zachary Rothman<br>
                <b>Associate Producer&colon;</b> Stephen Gillis
            </p>
            
            <p>This video is part of the UBC Intro Stats Project funded by the University of British Columbia’s Teaching and Learning Enhancement Fund, The Faculty of Medicine, The Faculty of Science, and The Faculty of Arts</p>
            
            <p>Copyright UBC 2017<br>License Creative Commons<br>Share-alike, Nn
                
	    </div>
	    
	    <div class="col-md-4 tags">
	    
		<div class="panel panel-default">
		    <div class="panel-heading">
			<h3 class="panel-title"><i class="glyphicon glyphicon-tag"></i> Tags</h3>
		    </div>
		    <div class="panel-body">
			<p>
			<strong>Topics:</strong> Confidence intervals, One sample mean t
            </p>
		    </div>
		</div>
	      
		<div class="panel panel-default">
		    <div class="panel-heading">
			<h3 class="panel-title"><i class="glyphicon glyphicon-link"></i> Related materials</h3>
		    </div>
		    <div class="panel-body">
			<ul>
			    <li><a href="http://www.cwsei.ubc.ca/resources/files/Demo_WorkshopSummary_CWSEI-EOY2015.pdf">“Making the most of demonstrations, videos, animations, or simulations in lectures and laboratories” J. Maxwell and J. Stang <span class="glyphicon glyphicon-new-window"></span></a></li>
		      </ul>
		    </div>
		</div>
            
        <div class="panel panel-default">
		    <div class="panel-heading">
			<h3 class="panel-title"><i class="glyphicon glyphicon-book"></i> What we learned</h3>
		    </div>
		    <div class="panel-body">
		    </div>
		</div> 
	    
	    </div>	
	</div>
	
	<div class="row text-center">
	    <div class="col-md-12">
		<h4 class="more-heading">To see more resources:</h4>
		<a href="/register" class="btn btn-success btn-lg">Join</a> &nbsp;or&nbsp; <a href="/mydspace" class="btn btn-success btn-lg">Sign In</a>
	    </div>
	    
	</div>

    </div>

</dspace:layout>