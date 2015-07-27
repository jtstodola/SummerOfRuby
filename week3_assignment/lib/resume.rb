class Resume
  include Renderer
  include Caller
  
  def content(env = nil)
    content = %Q{
    <section>
      <h1>My Resume</h1>
      <h2>Education</h2>
      <p>
        <h3>Chippewa Valley Technical College - Eau Claire, WI</h3>
        <ul>
          <li>June 2014 - May 2016, GPA: 3.96/4.00</li>
          <li>S-STEM Scholarship recipient (2014)</li>
          <li>Information Technology - Software Developer, A.A.S. in Progress
            (39/60 completed)
          </li>
          <li>IT Club President (January 2015 - May 2015)</li>
        </ul>

        <h3>University of Wisconsin - Eau Claire, WI</h3>
        <ul>
          <li>January2007 - December 2012, GPA: 3.21/4.00</li>
          <li>Comprehensive Environmental Geography, B.S.</li>
          <li>Honors Societies: Alpha Lambda Delta, Phi Eta Sigma</li>
          <li>Cum Laude</li>
          <li>Academic Distinction: Spring 2007, Fall 2010, Fall 2012</li>
        </ul>
      </p>
    </section>

    <section>
      <p>
        <h2>Certificates</h2>
        <h3>Information Technology</h3>
          <ul>
            <li>IT-Microsoft .NET Programmer (2015)</li>
          </ul>

        <h3>Geographic Information Systems</h3>
        <ul>
          <li>Creating, Editing, and Managing Geodatabases for ArcGIS Desktop (2012)</li>
          <li>Creating and Editing Geodatabase Topology with ArcGIS Desktop (2012)</li>
          <li>Introduction to Urban and Regional Planning Using ArcGIS 9 (2008)</li>
          <li>Spatial Analysis of Geohazards Using ArcGIS 9 (2008)</li>
          <li>Using Python in ArcGIS Desktop 10</li>
        </ul>
      </p>
    </section>

    <section>
      <p>
        <h2>Research Projects</h2>
        <ul>
          <li>Site analysis for the location for a downhill skiing park in west-central
            Wisconsin</li>
          <li>Risk Analysis and Emergency Evacuation Model: Long Valley Caldera, CA. 
            Utilizing network analysis in ArcMap to determine emergency evacuation routes 
            in the event of volcanic activity.
          </li>
          <li>Soil analysis of St. Bede's Priory to determine historical land use practices 
            of the property.
          </li>
          <li>Effects of Community Gardens on Neighborhoods of Madison, Wisconsin. 
            Analyzing spatial data over a decade to determine the effects community gardens 
            have on demographics.
          </li>
          <li>Ground-penetrating radar data collection at the Marina Dunes Preserve 
            on Fort Ord in California.
          </li>
        </ul>

        <h2>Development Projects</h2>
        <a href="https://github.com/jtstodola">github.com/jtstodola</a>
      </p>
    </section>

    <section>
      <p>
        <h2>Professional Publications</h2>
        <ul>
          <li>
            Tompsett, S., Alger, R., Arnevik, A., Holm, A., Pletzer, J., Roeglin, L., Stodola, J.,
            Valitchka, G., Running, Garry. (2012). Soils and Best Landuse: A Tale of Soil Erosion
            Susceptibility and Suggestions for Mitigation from the University of Wisconsin - Eau Claire's
            Children's Namture Academy, West-central Wisonsin. AAG Conference April 2013, Los Angeles, CA.
            Student Research Day 2013, University of Wisconsin - Eau Claire.
          </li>
          <li>
            Bohl, N, Dery, K, Jenson, L, Stodola, J, Snyder, J. Accuracy of Global Positioning System
            Receivers. Student Research Day 2012, University of Wisconsin - Eau Claire.
          </li>
        </ul>
      </p>
    </section>

    <section>
      <h2>Skills</h2>
      <p>
        <h3>Analytical</h3>
        <ul>
          <li>Database normalization, table joins, and SQL</li>
          <li>Answering spatial questions using statistical analysis</li>
          <li>Interpretation of summarized results in table and graph format</li>
          <li>Data analysis utilizing Microsoft Excel</li>
          <li>Understanding of subatomic, chemical, and geologic processes</li>
          <li>Advanced mathematics (calculus and trigonometry)</li>
        </ul>
      </p>

      <p>
        <h3>Technical</h3>
        Information Technology:
        <ul>
          <li>Microsoft Word, Excel, PowerPoint, Adobe Illustrator, PhotoShop and Outlook</li>
          <li>OS: Windows, iOS, Linux</li>
          <li>HTML5, CSS, Notepad++, VIM</li>
          <li>JavaScript, jQuery</li>
          <li>Ruby</li>
          <li>Python (novice)</li>
        </ul>
        Geographic Information Systems:
        <ul>
          <li>Database Management using Access and ArcGIS</li>
          <li>ESRI ArcGIS 10.1: ArcMap(ArcView), ArcScene, ArcCatalog, ArcPad.</li>
          <li>Pegasus, MapShots: AgStudio, HGIS</li>
          <li>Thematic & bathymetric maps</li>
          <li>Projections and coordinate systems</li>
          <li>Table joins and relates</li>
          <li>Vector and raster analysis</li>
          <li>Fishnet</li>
          <li>Model Builder</li>
          <li>Network analysis</li>
          <li>Interpolation</li>
          <li>Geocoding</li>
          <li>Georeferencing</li>
          <li>Surface modeling</li>
          <li>Geodatabase topology and rules</li>
        </ul>
      </p>

      <p>
        <h3>Data Collection</h3>
        <ul>
          <li>Trimble ProXR</li>
          <li>Trimble Juno</li>
          <li>Garmin eTrex</li>
          <li>Garmin Montana</li>
          <li>Spectra Precision Mobile Mapper 120</li>
          <li>Ground penetrating radar data collection</li>
          <li>Maintenance of field notes and individual/group field reports</li>
        </ul>
      </p>
    </section>

    <section>
      <h2>Employment History</h2>
      <p>
        <h3>Student Networking and Activities Programming Leader - 
          Chippewa Valley Technical College</h3>
          Eau Claire, WI (October 2014 - March 2015)
        <ul>
          <li>Planning student activities (speakers, family nights, Earth Day Fair).</li>
          <li>Emailing contacts, hanging up and taking down poster, and 
            meetings with staff from other departments to plan events.
          </li>
        </ul>
      </p>

      <p>
        <h3>Apparel Customer Service Representative - eBay Enterprises (Doherty Staffing)</h3>
        Eau Claire, WI (September 2014 - December 2014) 
        <ul>
          <li>Answering inbound calls for Aeropostale.com and Timberland.com</li>
          <li>Taking online orders and troubleshooting customer issues</li>
        </ul>
      </p>

      <p>
        <h3>Transportation Support/Safety Analyst - Precision Pipeline, LLC</h3>
        Eau Claire, WI (May 2013 - March 2014) 
        <ul>
          <li>Data entry, filing, and maintenance of GPS database</li>
          <li>Filing worker's compensation, auto, and general liability claims, 
            merchandising, and insurance certificates
          </li>
        </ul>
      </p>

      <p>
        <h3>Research Worker/GIS Internship - DuPont Pioneer Hi-Bred</h3>
        Eau Claire, WI (March 2013 - May 2013)
        <ul>
          <li>Seed cleaning, counting, packaging, sorting, and filing</li>
          <li>Implemented ArcGIS for mapping field grids for planting season 2014</li>
          <li>Data collection using the Spectra Precision Mobile Mapper 120</li>
          <li>Spatial analysis of seed plot experiments utilizing ArcMap</li>
        </ul>
      </p>

      <p>
        <h3>Mapping Specialist Internship - Eau Claire County Parks and Forest</h3>
        Eau Claire, WI (June 2012 - September 2012)
        <ul>
          <li>Data Collection of point and trail locations using a Trimble ProXR</li>
          <li>Data editing and digitization using ArcMap 10</li>
          <li>Data overlay onto an aerial map using Adobe Illustrator</li>
          <li>Communication with managers and presidents of five recreational trails 
            in the Tower Ridge Recreational Park
          </li>
          <li>Creation of trail maps for each trail and a map of all trails overlaying 
            an aerial photo
          </li>
          <li>Map presentation to the Eau Claire Parks and Forest council</li>
          <li>
            <a href="http://www.co.eau-claire.wi.us/departments/departments-l-z/parks-forest/recreational-trails">Tower Ridge Recrational Maps</a>
          </li>
        </ul>
      </p>

      <p>
        <h3>Customer Service Representative/Floor Coach/Team Lead - 
          Harmon Solutions Group</h3>
        Eau Claire, WI (September 2007 - March 2009) 
        <ul>
          <li>In-bound calls for auto, property, and glass claims, scheduling appointments, 
            price quotes
          </li>
          <li>Assisted other employees with technical and customer service related
            questions
          </li>
          <li>Escalated calls and quality assurance through call monitoring and 
            proofreading of claims
          </li>
          <li>Running reports using Microsoft Excel, end of year reviews and disciplinary
            actions
          </li>
          <li>Associate of the Month: January 2008</li>
          <li>Second place for annual top sales for 2008</li>         
        </ul>
      </p>

      <p>
        <h3>Office Manager - 231 TAXI, LLC</h3>
        Menomonie, WI (February 2006 - May 2009)
        <ul>
          <li>Deposits</li>
          <li>Payroll</li>
          <li>Accounts Receivable</li>
          <li>Billing</li>
          <li>QuickBooks 2006</li>
          <li>Filing systems</li>
          <li>Training Documentation</li>
          <li>Tax Preparation</li>
        </ul>
      </p>
    </section>
    }
  end
end