![RIS02\_all-purpose\_RGB](media/image1.jpeg){width="4.427083333333333in" height="1.2083333333333333in"}

**Document history**

  ------------- ------------ ------------------------ ---------------- ---------------------------------------------------------------
  **version**   **date**     **author**               **adopted by**   **remarks**

  0.1           2012-05-10   Christoph Plasil, AT                      Initial draft ANNEX 1 based on FAQ section of RIS Index v0p91

  0.2           2012-05-13   Mario Sattler, AT                         Amendments

  0.3           2014-12-04   Christoph Plasil, AT                      Amendments (e.g. terminal code -&gt; ORC)
                                                                       
                2015-04-27                                             

  2.5           2019-08-07   Christoph Plasil, AT                      Included amendments for Q4, Q5, Q8, Q9
                                                                       
                             Jonathan Gallagher, AT                    

  3.0           2019-12-24   Christoph Plasil, AT                      Changed document version number to 3p0
  ------------- ------------ ------------------------ ---------------- ---------------------------------------------------------------

**Table of Contents**

RIS Index Encoding Guide Annex 1: Frequently Asked Questions 4

Q1: Can you provide more information about the UN Recommendations? 4

Q2: What are the key priorities of the Joint Task Force for the RIS Index? 4

Q3: What is the commonly agreed encoding for waterway gauges? 5

Q4: Could you provide a clear definition of a “waterway section” and a “junction” and how they are utilised in the RIS Index? 5

Q5: What “waterway section code” shall be provided to a waterway that flows along a border between two countries? 5

Q6: What shall be the name of waterway sections in border stretches? 6

Q7: Which hectometre shall be used for large objects such as port / harbour / anchorage areas that normally extend over several hectometres along a waterway? 6

Q8: How to handle updates of the UNLOCODE by the UN/ECE within the RIS-Index? 6

Q9: How to encode distance marks along waterway axis? 6

Q10: How to encode objects in cross border sections? 8

QX: Here your question could be written? 9

RIS Index Encoding Guide Annex 1: Frequently Asked Questions {#ris-index-encoding-guide-annex-1-frequently-asked-questions .ListParagraph .Formatvorlageberschrift1Block}
============================================================

Based on their experience the Members of the Joint Task Force should provide frequently asked questions here, and if applicable, already the answers.

Q1: Can you provide more information about the UN Recommendations?
------------------------------------------------------------------

The UNECE, and for that matter UN/CEFACT as the centre for Trade Facilitation and Electronic Business, have published and maintained a wide range of recommendations and practical tools to ensure common codes and procedures. Examples are:

-   The codes for representation of names of countries, UN/Rec. 3 or ISO 3166, using 2-alpha character coding.

-   The alphabetic codes for the representation of currencies UN/Rec. 9.

-   The UNLOCODE Code for Ports and other locations, UN/Rec. 16.

-   The codes for Modes of Transport UN/Rec. 19.

-   Transport status codes UN/Rec. 24.

As far as Recommendation 16 is concerned, it is important that some background is given to ensure its proper usage: The work to prepare codes for ports commenced in 1972 and was specified as to establish the need to designate various locations involved in external trade being cities, ports, airports, border crossings etc. After consultation with the other regional commissions and with the international air transport association (IATA) and the International Chamber of Shipping (ICS), a set of codes was established. The following Recommendation was accepted: “The Centre for the Facilitation of Procedures Practices for Administration Commerce and Transport,

-   being aware of the need for an internationally agreed code system to represent names of certain locations of interest in international trade and transport.

-   considering that the code system should be based on the two letter alphabetic codes for the representation of names of countries ISO 3166 recommended by the working party on October 1974, and regularly updated in the following years.

-   recommends that the five character code system described hereafter should be used for purposes of trade to designate locations whenever there is a need for a coded representation for the names of ports, airports, inland clearance depots, inland freight terminals and other transport related locations such as places of receipt and delivery, which are used for goods movements associated with trade or otherwise proposed by governments.

-   invites Governments to transmit lists of entities with code designations according to the established criteria and to ensure that each national list is continuously updated and communicated to the United Nations secretariat, responsible for the maintenance of the code system.”

Link to UN Recommendations: <http://www.unece.org/cefact/recommendations/rec_index.htm>

Q2: What are the key priorities of the Joint Task Force for the RIS Index?
--------------------------------------------------------------------------

The proposed key priorities of the Joint Task Force are:

-   Setup rules / instructions for adding objects based on the Term of Reference of the RIS Expert Groups (see Chapter 2 “List of objects”). Rules are for example:

    -   ***Check, before adding an object …***

> if you are able to get the same required „RIS- Functionality“ by making use of the existing objects of the minimum list.

-   ***Check, before adding an object … ***

> if you really can achieve a European wide harmonised RIS functionality (if not, don’t add.)

-   Ensure harmonisation with the IENC expert group.

-   *to be amended by the JTF*

<!-- -->

-   Maintenance of the RIS Index Encoding Guide with inputs from the various Experts Groups and RIS Implementation Projects.

-   Draft recommendation in order to facilitate the improvement of Annex 1 (list of mandatory objects including encoding schedule) of the amended RIS Directive.

Q3: What is the commonly agreed encoding for waterway gauges? 
--------------------------------------------------------------

The Object Reference Code for gauges is assigned by the national authorities and is based on the commonly agreed encoding. Object Reference Code consists of combination of five alphanumerical characters “**Gnnnn**”, where G is default not changeable character identifying Gauge and **nnnn** is a four-digit number with value less than 2048 (**nnnn &lt; 2048**).

  ------------------------------------- ---------------------------- ---------------------------- ---------------------------- ---------------------- ---------------------- --------------------------------
  Column K, Country Code, ISO-alpha 2   Column L, UN Location Code   Column M, Waterway Section   Column N, Object Ref. Code   Column O, Hectometre   Column P               Column AB, National gauge code
                                                                                                                                                                             
                                                                                                                                                      ISRS Location Code     

  AT                                    GRN                          00001                        G0005                        20791                  ATGRN00001G000520791   GAUGE

  AT                                    KBG                          00001                        G0008                        19415                  ATKBG00001G000819415   G09A1

  NL                                    SVW                          0150C                        G0022                        00064                  NLSVW0150CG002200064   0STEV
  ------------------------------------- ---------------------------- ---------------------------- ---------------------------- ---------------------- ---------------------- --------------------------------

The column AB “national gauge code” can be utilised to put any national coding for gauge; e.g. in NL the alphanumeric code or any other national gauge coding, incl. WMO gauge coding, in order to make a link to national encoding systems, if necessary.

Countries can transpose e.g. WMO codes into the new encoding of object reference code for gauges, if such a code complies with the encoding requirements for object reference codes of gauges as stated above (for example on the basis of the Recommendation from Danube Commission CD/SES 52/20 for Danube countries from 1997.

Reading of encoded gauges in AIS:

  ----------------------------- ---------------------------------------------------------- -----------------
  > country code, ISO-alpha 2   > Column N, object reference code (without G) = Gauge ID   Inland AIS code
  > AT                          > 0005                                                     AT0005
  > AT                          > 0008                                                     AT0008
  > NL                          > 0022                                                     NL0022
  ----------------------------- ---------------------------------------------------------- -----------------

Q4: Could you provide a clear definition of a “waterway section” and a “junction” and how they are utilised in the RIS Index?
-----------------------------------------------------------------------------------------------------------------------------

-   Q4.1: Is a “junction” a physical connection of two different waterways or an administrative connection?

*A waterway network definition is being elaborated in RIS COMEX including waterway sections and junctions.*

Q5: What “waterway section code” shall be provided to a waterway that flows along a border between two countries?
-----------------------------------------------------------------------------------------------------------------

*A waterway network definition is being elaborated in RIS COMEX including a definition for codification of common border sections.*

Q6: What shall be the name of waterway sections in border stretches?
--------------------------------------------------------------------

If a waterway section is the borderline between two countries with different languages, the object name can be provided in both languages (e.g. “Donau – Dunaj”, “Dunaj – Duna”).

An EU waterway code could be introduced to provide proper translations.

Q7: Which hectometre shall be used for large objects such as port / harbour / anchorage areas that normally extend over several hectometres along a waterway?
-------------------------------------------------------------------------------------------------------------------------------------------------------------

Ideally the hectometre point that is closest to the centre of the object is used for the hectometre code.

Q8: How to handle updates of the UNLOCODE by the UN/ECE within the RIS-Index?
-----------------------------------------------------------------------------

After official publication of an updated UN/LOCODE list by the UN/ECE, the updated list shall be processed by all involved Member States or the respectively the national RIS-providers

-   The non-exiting (removed/changed) UN/LOCODES shall be removed out of the RIS-index

-   New UN/LOCODES shall be evaluated and where applicable, the new UN/LOCODES shall be used and the respective national RIS-indices shall be updated. Changes of the UN/LOCODES must not affect the ISRS Location Code, the update is only performed in the column ‘B’ “UN Location code” of the RIS Index.

Q9: How to encode distance marks along waterway axis?
-----------------------------------------------------

Reference: Notices to Skippers Expert Group, Change Request 73, 28.08.2009

Since the waterway/fairway axis with kilometer indication represents one of the data source, which shall be supplied by European countries in order to fulfil Minimum data requirements mentioned in Annex I of RIS Directive, it is of importance to establish harmonised encoding procedure of kilometre (hectometre) points location codes on the waterway/fairway axis within national RIS indices.

Below table illustrates an example of encoding single kilometre (hectometre) point on the waterway/fairway axis.

  ----------------------------------------------------------------------------------------------------------------------------------------------------
  Country code    > UN Location Code           > Fairway section code        Object Reference Code       Hectometre             ISRS Location Code
                  >                            >                                                                                
  (ISO-aplha 2)   > (3 digits, letters only)   > (5 digits alphanumerical)   (5 digits alphanumerical)   (5 digits numerical)   
  --------------- ---------------------------- ----------------------------- --------------------------- ---------------------- ----------------------
  SK              XXX                          00001                         > 00000                     18550                  SKXXX000010000018550
  ----------------------------------------------------------------------------------------------------------------------------------------------------

The function code “dismar” shall be assigned (see RIS Index Encoding Guide).

***Encoding of individual data elements/fields (according to the example from above table):***

-   **Country code** is a mandatory field and stands for the country where the object - “kilometre (hectometre) point on the waterway/fairway axis” is located. It consists of two letters and is defined in ISO standard 3166-1.

> *Known Issue: How to encode the* kilometre (hectometre) *points located on common stretch of certain river (e.g. the waterway axis creates the border between two states)? In case of SK and HU,* kilometre (hectometre) *points on waterway/fairway axis from Donau rkm 1811 to 1708 can have two ISRS Location Codes, which differ in first two letters and belong to the same location (SKXXX000010000018100 and HUXXX000010000018100 refers to the same point). Experience from countries should be considered.*
>
> *A solution for this problem is being elaborated in RIS COMEX, the relevant elements are duplicated thus one object may include the necessary information for both neighbouring countries.*

-   **UN Location Code** is a mandatory field. It consists of three letters. In case of encoding kilometre (hectometre) points on waterway/fairway axis, the location code XXX has to be used.

-   **Fairway section code** is a mandatory field. It consists of five alphanumerical digits and has to be assigned by the national authorities. It represents the coding of a waterway section within a national network and is only unique in combination with the country code.\
    \
    In case the fairway section code changes the information is updated in column C only and does not affect the ISRS Location Code (column F).

-   **Object Reference Code (ORC)** is a mandatory field. It consists of five alphanumerical digits and has to be assigned by the national authorities. ORC in case of kilometre (hectometre) points on waterway/fairway axis is represented by five zeros "00000".

-   **Hectometre code** consists of five numerical digits. Example: “00235” for river km 23.5; “00001” for river km 0,1

> The Fairway Hectometre always refers to the nearest physical mark, regardless of its precision. It should therefore be seen as a “meaningful” attribute and not as a basis for calculations. In case there are no physical marks, virtual hectometre values shall be used.
>
> In case the Fairway Hectometre changes the information is updated in column E only and does not affect the ISRS Location Code (column F).
>
> In case Nautical Miles (nm) are used as distance marks the nm shall be converted to hectometres (e.g. nm 1 converts to hm 1.8).

-   **ISRS Location Code** for kilometre (hectometre) points on waterway/fairway axis encoded according to this proposal provides a unique identifier for each kilometre (hectometre) points on waterway/fairway axis within national RIS index.\
    \
    The ISRS Location Code may be generated based on meaningful information but shall not be used for the extraction, display or further processing of meaningful information by applications. Once it is generated it shall serve as a unique ID only.

Q10: How to encode objects in cross border sections?
----------------------------------------------------

*Reference*: PLATINA, “Consolidation of the RIS Index – Decision Cases on the RIS Index”, SWP 5.2. D.14 and D.15, February 2010

Currently in many cases national RIS Indices are not harmonized between neighbouring countries. If such RIS Indices are merged into one European RIS Index it leads to existence of 2 different ISRS Location Codes for certain objects “belonging” to both countries, located on the common stretch (e.g. a bridge crossing the waterway on a common stretch). This is in contradiction with one of the basic rules of encoding of objects in RIS Index - that an object must have one unique ISRS Location Code.

Therefore a suitable solution and an agreement on encoding of such objects is necessary to ensure that:

-   There is only one unique ISRS Location Code for a certain object,

-   The ISRS Location Code and additional information related to an object are available also in national RIS Indices and can be used in national applications.

The following principle for encoding of objects on common stretches was agreed:

1.  Concerned objects on the common stretches have to be identified.

2.  Neighbouring countries have to agree mutually which objects in the RIS Index will be maintained by which country.

3.  Objects shall be encoded in line with the RIS Index Encoding Guide but some specific conditions should be fulfilled:

-   The objects shall be included in both national RIS Indices, i.e. each national RIS Index will contain a few “foreign” objects with foreign ISRS Location Codes,

-   In order to avoid possible language problems when using the RIS Index on national level the local object name shall be indicated in both languages in the following order:

1.  1st entry: language corresponding to the country code of the object

2.  2nd entry: second language

Example of encoding bridges on common SK-HU stretch of Danube:

  **ISRS Location Code**   **Object name**
  ------------------------ ----------------------------------------
  SKMED00001BRIDG18064     CESTNY MOST MEDVEDOV / MEDVE HID
  HUKOM00001BRIDG17704     KOMAROMI HID / ZELEZNICNY MOST KOMARNO

Furthermore it needs to be checked whether this is an acceptable solution from the technical point of view, i.e. inclusion of "foreign" ISRS Location Code in national RIS Index, possible restriction of the length of the field "Object name". The field “National object name” has a length of 256 characters should be big enough to include the full name.

 

> ***Recommendation***
>
> Each object in the RIS Index shall have only one ISRS Location Code, even when those objects are located on common stretches of a waterway for two or more countries. It is recommended that the object name in the RIS index is agreed between   Member States sharing an object in the RIS Index.

QX: Here your question could be written?
----------------------------------------

Here your answer could be written.
