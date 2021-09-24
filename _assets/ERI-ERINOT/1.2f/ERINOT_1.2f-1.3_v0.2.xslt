<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns0="http://www.risexpertgroups.org/ERINOT1.2" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="ns0 xs">
	<xsl:output method="xml" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<xsl:variable name="var1_initial" select="."/>
		<ERINOT xmlns="https://ris.cesni.eu/_assets/ERI-ERINOT/1.3">
			<xsl:attribute name="xsi:schemaLocation" namespace="http://www.w3.org/2001/XMLSchema-instance">https://ris.cesni.eu/_assets/ERI-ERINOT/1.3</xsl:attribute>
			<xsl:for-each select="ns0:ERINOT">
				<xsl:variable name="var2_cur" select="."/>
				<xsl:attribute name="VersionMajor" namespace="">1</xsl:attribute>
				<xsl:attribute name="VersionMinor" namespace="">3</xsl:attribute>
			</xsl:for-each>
			<xsl:for-each select="ns0:ERINOT">
				<xsl:variable name="var3_cur" select="."/>
				<MessageId>
					<SenderId>
						<xsl:value-of select="ns0:MessageId/ns0:SenderId"/>
					</SenderId>
					<ReceiverId>
						<xsl:value-of select="ns0:MessageId/ns0:ReceiverId"/>
					</ReceiverId>
					<GenerationDateTime>
						<xsl:value-of select="ns0:MessageId/ns0:GenerationDateTime"/>
					</GenerationDateTime>
					<xsl:for-each select="ns0:MessageId/ns0:AckRequest">
						<xsl:variable name="var4_cur" select="."/>
						<AckRequest>
							<xsl:value-of select="."/>
						</AckRequest>
					</xsl:for-each>
					<xsl:for-each select="ns0:MessageId/ns0:TestIndicator">
						<xsl:variable name="var5_cur" select="."/>
						<TestIndicator>
							<xsl:value-of select="."/>
						</TestIndicator>
					</xsl:for-each>
					<MessageType>
						<xsl:value-of select="ns0:MessageId/ns0:MessageType"/>
					</MessageType>
					<MessageNo>
						<xsl:value-of select="ns0:MessageId/ns0:MessageNo"/>
					</MessageNo>
					<MessageFunction>
						<xsl:value-of select="number(ns0:MessageId/ns0:MessageFunction)"/>
					</MessageFunction>
					<xsl:for-each select="ns0:MessageId/ns0:CommonDenominator">
						<xsl:variable name="var6_cur" select="."/>
						<CommonDenominator>
							<xsl:value-of select="."/>
						</CommonDenominator>
					</xsl:for-each>
				</MessageId>
				<EDIMapping>
					<Syntax>
						<xsl:value-of select="ns0:EDIMapping/ns0:Syntax"/>
					</Syntax>
					<SyntaxVersion>
						<xsl:value-of select="ns0:EDIMapping/ns0:SyntaxVersion"/>
					</SyntaxVersion>
					<MessageType>
						<xsl:value-of select="ns0:EDIMapping/ns0:MessageType"/>
					</MessageType>
					<MessageVersion>
						<xsl:value-of select="ns0:EDIMapping/ns0:MessageVersion"/>
					</MessageVersion>
					<MessageRelease>
						<xsl:value-of select="ns0:EDIMapping/ns0:MessageRelease"/>
					</MessageRelease>
					<MessageControllingAgency>
						<xsl:value-of select="ns0:EDIMapping/ns0:MessageControllingAgency"/>
					</MessageControllingAgency>
					<AssociationAssignedCode>
						<xsl:value-of select="ns0:EDIMapping/ns0:AssociationAssignedCode"/>
					</AssociationAssignedCode>
				</EDIMapping>
				<xsl:for-each select="ns0:SafetyExplanation">
					<xsl:variable name="var7_cur" select="."/>
					<SafetyExplanation>
						<xsl:for-each select="ns0:Signalling">
							<xsl:variable name="var8_cur" select="."/>
							<Signalling>
								<xsl:value-of select="."/>
							</Signalling>
						</xsl:for-each>
						<PersonsOnBoard>
							<xsl:value-of select="number(ns0:PersonsOnBoard)"/>
						</PersonsOnBoard>
						<xsl:for-each select="ns0:PassengersOnBoard">
							<xsl:variable name="var9_cur" select="."/>
							<PassengersOnBoard>
								<xsl:value-of select="number(.)"/>
							</PassengersOnBoard>
						</xsl:for-each>
					</SafetyExplanation>
				</xsl:for-each>
				<xsl:for-each select="ns0:PrivacyStatement">
					<xsl:variable name="var10_cur" select="."/>
					<PrivacyStatement>
						<xsl:value-of select="(. = 'Y')"/>
					</PrivacyStatement>
				</xsl:for-each>
				<xsl:for-each select="ns0:MessageRef">
					<xsl:variable name="var11_cur" select="."/>
					<MessageRef>
						<xsl:value-of select="."/>
					</MessageRef>
				</xsl:for-each>
				<xsl:for-each select="ns0:TransportDocRef">
					<xsl:variable name="var12_cur" select="."/>
					<TransportDocRef>
						<xsl:value-of select="."/>
					</TransportDocRef>
				</xsl:for-each>
				<xsl:for-each select="ns0:TestScenarioRef">
					<xsl:variable name="var13_cur" select="."/>
					<TestScenarioRef>
						<xsl:value-of select="."/>
					</TestScenarioRef>
				</xsl:for-each>
				<Transport>
					<TransportDetails>
						<xsl:attribute name="StageQualifier" namespace="">
							<xsl:value-of select="ns0:Transport/ns0:TransportDetails/@StageQualifier"/>
						</xsl:attribute>
						<xsl:for-each select="ns0:Transport/ns0:TransportDetails/ns0:VoyageNo">
							<xsl:variable name="var14_cur" select="."/>
							<VoyageNo>
								<xsl:value-of select="."/>
							</VoyageNo>
						</xsl:for-each>
						<TransportMode>
							<xsl:value-of select="ns0:Transport/ns0:TransportDetails/ns0:TransportMode"/>
						</TransportMode>
						<TransportMeans>
							<xsl:value-of select="ns0:Transport/ns0:TransportDetails/ns0:TransportMeans"/>
						</TransportMeans>
						<Vessel>
							<VesselId>
								<xsl:value-of select="ns0:Transport/ns0:TransportDetails/ns0:Vessel/ns0:VesselId"/>
							</VesselId>
							<VesselIdType>
								<xsl:value-of select="ns0:Transport/ns0:TransportDetails/ns0:Vessel/ns0:VesselIDType"/>
							</VesselIdType>
						</Vessel>
						<VesselName>
							<xsl:value-of select="ns0:Transport/ns0:TransportDetails/ns0:VesselName"/>
						</VesselName>
						<Nationality>
							<xsl:value-of select="ns0:Transport/ns0:TransportDetails/ns0:Nationality"/>
						</Nationality>
					</TransportDetails>
					<TransportDimensions>
						<Length>
							<xsl:value-of select="number(ns0:Transport/ns0:TransportDimensions/ns0:Length)"/>
						</Length>
						<Width>
							<xsl:value-of select="number(ns0:Transport/ns0:TransportDimensions/ns0:Width)"/>
						</Width>
						<Draught>
							<xsl:value-of select="number(ns0:Transport/ns0:TransportDimensions/ns0:Draught)"/>
						</Draught>
						<Tonnage>
							<xsl:value-of select="number(ns0:Transport/ns0:TransportDimensions/ns0:Tonnage)"/>
						</Tonnage>
						<xsl:for-each select="ns0:Transport/ns0:TransportDimensions/ns0:Airdraft">
							<xsl:variable name="var15_cur" select="."/>
							<Airdraft>
								<xsl:value-of select="number(.)"/>
							</Airdraft>
						</xsl:for-each>
					</TransportDimensions>
					<xsl:for-each select="ns0:Transport/ns0:TransportReference">
						<xsl:variable name="var16_cur" select="."/>
						<TransportReference>
							<RefQualifier>
								<xsl:value-of select="ns0:RefQualifier"/>
							</RefQualifier>
							<RefNo>
								<xsl:value-of select="ns0:RefNo"/>
							</RefNo>
						</TransportReference>
					</xsl:for-each>
					<TransportLocations>
						<PortOfDeparture>
							<Locode>
								<xsl:value-of select="ns0:Transport/ns0:TransportLocations/ns0:PortOfDeparture/ns0:Locode"/>
							</Locode>
							<xsl:for-each select="ns0:Transport/ns0:TransportLocations/ns0:PortOfDeparture/ns0:LocationName">
								<xsl:variable name="var17_cur" select="."/>
								<LocationName>
									<xsl:value-of select="."/>
								</LocationName>
							</xsl:for-each>
							<xsl:for-each select="ns0:Transport/ns0:TransportLocations/ns0:PortOfDeparture/ns0:TerminalCode">
								<xsl:variable name="var18_cur" select="."/>
								<ObjectCode>
									<xsl:value-of select="."/>
								</ObjectCode>
							</xsl:for-each>
							<xsl:for-each select="ns0:Transport/ns0:TransportLocations/ns0:PortOfDeparture/ns0:TerminalName">
								<xsl:variable name="var19_cur" select="."/>
								<TerminalName>
									<xsl:value-of select="."/>
								</TerminalName>
							</xsl:for-each>
							<xsl:for-each select="ns0:Transport/ns0:TransportLocations/ns0:PortOfDeparture/ns0:FairwaySectionCode">
								<xsl:variable name="var20_cur" select="."/>
								<FairwaySectionCode>
									<xsl:value-of select="."/>
								</FairwaySectionCode>
							</xsl:for-each>
							<xsl:for-each select="ns0:Transport/ns0:TransportLocations/ns0:PortOfDeparture/ns0:FairwayHectometre">
								<xsl:variable name="var21_cur" select="."/>
								<FairwayHectometre>
									<xsl:value-of select="."/>
								</FairwayHectometre>
							</xsl:for-each>
						</PortOfDeparture>
						<xsl:for-each select="ns0:Transport/ns0:TransportLocations/ns0:PassagePoint">
							<xsl:variable name="var22_cur" select="."/>
							<PassagePoint>
								<Locode>
									<xsl:value-of select="ns0:Locode"/>
								</Locode>
								<xsl:for-each select="ns0:LocationName">
									<xsl:variable name="var23_cur" select="."/>
									<LocationName>
										<xsl:value-of select="."/>
									</LocationName>
								</xsl:for-each>
								<xsl:for-each select="ns0:TerminalCode">
									<xsl:variable name="var24_cur" select="."/>
									<ObjectCode>
										<xsl:value-of select="."/>
									</ObjectCode>
								</xsl:for-each>
								<xsl:for-each select="ns0:TerminalName">
									<xsl:variable name="var25_cur" select="."/>
									<TerminalName>
										<xsl:value-of select="."/>
									</TerminalName>
								</xsl:for-each>
								<xsl:for-each select="ns0:FairwaySectionCode">
									<xsl:variable name="var26_cur" select="."/>
									<FairwaySectionCode>
										<xsl:value-of select="."/>
									</FairwaySectionCode>
								</xsl:for-each>
								<xsl:for-each select="ns0:FairwayHectometre">
									<xsl:variable name="var27_cur" select="."/>
									<FairwayHectometre>
										<xsl:value-of select="."/>
									</FairwayHectometre>
								</xsl:for-each>
							</PassagePoint>
						</xsl:for-each>
						<xsl:for-each select="ns0:Transport/ns0:TransportLocations/ns0:NextPortOfCall">
							<xsl:variable name="var28_cur" select="."/>
							<NextPortOfCall>
								<Locode>
									<xsl:value-of select="ns0:Locode"/>
								</Locode>
								<xsl:for-each select="ns0:LocationName">
									<xsl:variable name="var29_cur" select="."/>
									<LocationName>
										<xsl:value-of select="."/>
									</LocationName>
								</xsl:for-each>
								<xsl:for-each select="ns0:TerminalCode">
									<xsl:variable name="var30_cur" select="."/>
									<ObjectCode>
										<xsl:value-of select="."/>
									</ObjectCode>
								</xsl:for-each>
								<xsl:for-each select="ns0:TerminalName">
									<xsl:variable name="var31_cur" select="."/>
									<TerminalName>
										<xsl:value-of select="."/>
									</TerminalName>
								</xsl:for-each>
								<xsl:for-each select="ns0:FairwaySectionCode">
									<xsl:variable name="var32_cur" select="."/>
									<FairwaySectionCode>
										<xsl:value-of select="."/>
									</FairwaySectionCode>
								</xsl:for-each>
								<xsl:for-each select="ns0:FairwayHectometre">
									<xsl:variable name="var33_cur" select="."/>
									<FairwayHectometre>
										<xsl:value-of select="."/>
									</FairwayHectometre>
								</xsl:for-each>
							</NextPortOfCall>
						</xsl:for-each>
						<xsl:for-each select="ns0:Transport/ns0:TransportLocations/ns0:RoutePoints">
							<xsl:variable name="var34_cur" select="."/>
							<RoutePoints>
								<RoutePoint>
									<Locode>
										<xsl:value-of select="ns0:RoutePoint/ns0:Locode"/>
									</Locode>
									<xsl:for-each select="ns0:RoutePoint/ns0:LocationName">
										<xsl:variable name="var35_cur" select="."/>
										<LocationName>
											<xsl:value-of select="."/>
										</LocationName>
									</xsl:for-each>
									<xsl:for-each select="ns0:RoutePoint/ns0:TerminalCode">
										<xsl:variable name="var36_cur" select="."/>
										<ObjectCode>
											<xsl:value-of select="."/>
										</ObjectCode>
									</xsl:for-each>
									<xsl:for-each select="ns0:RoutePoint/ns0:TerminalName">
										<xsl:variable name="var37_cur" select="."/>
										<TerminalName>
											<xsl:value-of select="."/>
										</TerminalName>
									</xsl:for-each>
									<xsl:for-each select="ns0:RoutePoint/ns0:FairwaySectionCode">
										<xsl:variable name="var38_cur" select="."/>
										<FairwaySectionCode>
											<xsl:value-of select="."/>
										</FairwaySectionCode>
									</xsl:for-each>
									<xsl:for-each select="ns0:RoutePoint/ns0:FairwayHectometre">
										<xsl:variable name="var39_cur" select="."/>
										<FairwayHectometre>
											<xsl:value-of select="."/>
										</FairwayHectometre>
									</xsl:for-each>
								</RoutePoint>
								<xsl:for-each select="ns0:RoutePointPassageTime">
									<xsl:variable name="var40_cur" select="."/>
									<RoutePointPassageTime>
										<xsl:value-of select="."/>
									</RoutePointPassageTime>
								</xsl:for-each>
							</RoutePoints>
						</xsl:for-each>
						<PortOfDestination>
							<Locode>
								<xsl:value-of select="ns0:Transport/ns0:TransportLocations/ns0:PortOfDestination/ns0:Locode"/>
							</Locode>
							<xsl:for-each select="ns0:Transport/ns0:TransportLocations/ns0:PortOfDestination/ns0:LocationName">
								<xsl:variable name="var41_cur" select="."/>
								<LocationName>
									<xsl:value-of select="."/>
								</LocationName>
							</xsl:for-each>
							<xsl:for-each select="ns0:Transport/ns0:TransportLocations/ns0:PortOfDestination/ns0:TerminalCode">
								<xsl:variable name="var42_cur" select="."/>
								<ObjectCode>
									<xsl:value-of select="."/>
								</ObjectCode>
							</xsl:for-each>
							<xsl:for-each select="ns0:Transport/ns0:TransportLocations/ns0:PortOfDestination/ns0:TerminalName">
								<xsl:variable name="var43_cur" select="."/>
								<TerminalName>
									<xsl:value-of select="."/>
								</TerminalName>
							</xsl:for-each>
							<xsl:for-each select="ns0:Transport/ns0:TransportLocations/ns0:PortOfDestination/ns0:FairwaySectionCode">
								<xsl:variable name="var44_cur" select="."/>
								<FairwaySectionCode>
									<xsl:value-of select="."/>
								</FairwaySectionCode>
							</xsl:for-each>
							<xsl:for-each select="ns0:Transport/ns0:TransportLocations/ns0:PortOfDestination/ns0:FairwayHectometre">
								<xsl:variable name="var45_cur" select="."/>
								<FairwayHectometre>
									<xsl:value-of select="."/>
								</FairwayHectometre>
							</xsl:for-each>
						</PortOfDestination>
						<xsl:for-each select="ns0:Transport/ns0:TransportLocations/ns0:ETD">
							<xsl:variable name="var46_cur" select="."/>
							<ETD>
								<xsl:value-of select="."/>
							</ETD>
						</xsl:for-each>
						<xsl:for-each select="ns0:Transport/ns0:TransportLocations/ns0:PassageTime">
							<xsl:variable name="var47_cur" select="."/>
							<PassageTime>
								<xsl:value-of select="."/>
							</PassageTime>
						</xsl:for-each>
						<xsl:for-each select="ns0:Transport/ns0:TransportLocations/ns0:ETA">
							<xsl:variable name="var48_cur" select="."/>
							<ETA>
								<xsl:value-of select="."/>
							</ETA>
						</xsl:for-each>
					</TransportLocations>
				</Transport>
				<MessageSenderAddress>
					<NameAddress>
						<PartyFunction>
							<xsl:value-of select="ns0:MessageSenderAddress/ns0:NameAddress/ns0:PartyFunction"/>
						</PartyFunction>
						<xsl:for-each select="ns0:MessageSenderAddress/ns0:NameAddress/ns0:PartyId">
							<xsl:variable name="var49_cur" select="."/>
							<PartyId>
								<xsl:value-of select="."/>
							</PartyId>
						</xsl:for-each>
						<PartyName>
							<xsl:value-of select="ns0:MessageSenderAddress/ns0:NameAddress/ns0:PartyName"/>
						</PartyName>
						<xsl:for-each select="ns0:MessageSenderAddress/ns0:NameAddress/ns0:Street">
							<xsl:variable name="var50_cur" select="."/>
							<Street>
								<xsl:value-of select="."/>
							</Street>
						</xsl:for-each>
						<xsl:for-each select="ns0:MessageSenderAddress/ns0:NameAddress/ns0:City">
							<xsl:variable name="var51_cur" select="."/>
							<City>
								<xsl:value-of select="."/>
							</City>
						</xsl:for-each>
						<xsl:for-each select="ns0:MessageSenderAddress/ns0:NameAddress/ns0:PostalCode">
							<xsl:variable name="var52_cur" select="."/>
							<PostalCode>
								<xsl:value-of select="."/>
							</PostalCode>
						</xsl:for-each>
						<xsl:for-each select="ns0:MessageSenderAddress/ns0:NameAddress/ns0:Country">
							<xsl:variable name="var53_cur" select="."/>
							<Country>
								<xsl:value-of select="."/>
							</Country>
						</xsl:for-each>
						<xsl:for-each select="ns0:MessageSenderAddress/ns0:NameAddress/ns0:InvoiceNumber">
							<xsl:variable name="var54_cur" select="."/>
							<VATNumber>
								<xsl:value-of select="."/>
							</VATNumber>
						</xsl:for-each>
					</NameAddress>
					<xsl:for-each select="ns0:MessageSenderAddress/ns0:Contact">
						<xsl:variable name="var55_cur" select="."/>
						<Contact>
							<xsl:for-each select="ns0:ContactInformation">
								<xsl:variable name="var56_cur" select="."/>
								<ContactInformation>
									<xsl:value-of select="."/>
								</ContactInformation>
							</xsl:for-each>
							<xsl:for-each select="ns0:CommsContact">
								<xsl:variable name="var57_cur" select="."/>
								<CommsContact>
									<CommsNo>
										<xsl:value-of select="ns0:CommsNo"/>
									</CommsNo>
									<CommsChannel>
										<xsl:value-of select="ns0:CommsChannel"/>
									</CommsChannel>
								</CommsContact>
							</xsl:for-each>
						</Contact>
					</xsl:for-each>
				</MessageSenderAddress>
				<xsl:for-each select="ns0:MessageReceiverAddress">
					<xsl:variable name="var58_cur" select="."/>
					<MessageReceiverAddress>
						<NameAddress>
							<PartyFunction>
								<xsl:value-of select="ns0:NameAddress/ns0:PartyFunction"/>
							</PartyFunction>
							<xsl:for-each select="ns0:NameAddress/ns0:PartyId">
								<xsl:variable name="var59_cur" select="."/>
								<PartyId>
									<xsl:value-of select="."/>
								</PartyId>
							</xsl:for-each>
							<PartyName>
								<xsl:value-of select="ns0:NameAddress/ns0:PartyName"/>
							</PartyName>
							<xsl:for-each select="ns0:NameAddress/ns0:Street">
								<xsl:variable name="var60_cur" select="."/>
								<Street>
									<xsl:value-of select="."/>
								</Street>
							</xsl:for-each>
							<xsl:for-each select="ns0:NameAddress/ns0:City">
								<xsl:variable name="var61_cur" select="."/>
								<City>
									<xsl:value-of select="."/>
								</City>
							</xsl:for-each>
							<xsl:for-each select="ns0:NameAddress/ns0:PostalCode">
								<xsl:variable name="var62_cur" select="."/>
								<PostalCode>
									<xsl:value-of select="."/>
								</PostalCode>
							</xsl:for-each>
							<xsl:for-each select="ns0:NameAddress/ns0:Country">
								<xsl:variable name="var63_cur" select="."/>
								<Country>
									<xsl:value-of select="."/>
								</Country>
							</xsl:for-each>
							<xsl:for-each select="ns0:NameAddress/ns0:InvoiceNumber">
								<xsl:variable name="var64_cur" select="."/>
								<VATNumber>
									<xsl:value-of select="."/>
								</VATNumber>
							</xsl:for-each>
						</NameAddress>
						<xsl:for-each select="ns0:Contact">
							<xsl:variable name="var65_cur" select="."/>
							<Contact>
								<xsl:for-each select="ns0:ContactInformation">
									<xsl:variable name="var66_cur" select="."/>
									<ContactInformation>
										<xsl:value-of select="."/>
									</ContactInformation>
								</xsl:for-each>
								<xsl:for-each select="ns0:CommsContact">
									<xsl:variable name="var67_cur" select="."/>
									<CommsContact>
										<CommsNo>
											<xsl:value-of select="ns0:CommsNo"/>
										</CommsNo>
										<CommsChannel>
											<xsl:value-of select="ns0:CommsChannel"/>
										</CommsChannel>
									</CommsContact>
								</xsl:for-each>
							</Contact>
						</xsl:for-each>
					</MessageReceiverAddress>
				</xsl:for-each>
				<xsl:for-each select="ns0:AgentInvoiceAddress">
					<xsl:variable name="var68_cur" select="."/>
					<AgentInvoiceAddress>
						<NameAddress>
							<PartyFunction>
								<xsl:value-of select="ns0:NameAddress/ns0:PartyFunction"/>
							</PartyFunction>
							<xsl:for-each select="ns0:NameAddress/ns0:PartyId">
								<xsl:variable name="var69_cur" select="."/>
								<PartyId>
									<xsl:value-of select="."/>
								</PartyId>
							</xsl:for-each>
							<PartyName>
								<xsl:value-of select="ns0:NameAddress/ns0:PartyName"/>
							</PartyName>
							<xsl:for-each select="ns0:NameAddress/ns0:Street">
								<xsl:variable name="var70_cur" select="."/>
								<Street>
									<xsl:value-of select="."/>
								</Street>
							</xsl:for-each>
							<xsl:for-each select="ns0:NameAddress/ns0:City">
								<xsl:variable name="var71_cur" select="."/>
								<City>
									<xsl:value-of select="."/>
								</City>
							</xsl:for-each>
							<xsl:for-each select="ns0:NameAddress/ns0:PostalCode">
								<xsl:variable name="var72_cur" select="."/>
								<PostalCode>
									<xsl:value-of select="."/>
								</PostalCode>
							</xsl:for-each>
							<xsl:for-each select="ns0:NameAddress/ns0:Country">
								<xsl:variable name="var73_cur" select="."/>
								<Country>
									<xsl:value-of select="."/>
								</Country>
							</xsl:for-each>
							<xsl:for-each select="ns0:NameAddress/ns0:InvoiceNumber">
								<xsl:variable name="var74_cur" select="."/>
								<VATNumber>
									<xsl:value-of select="."/>
								</VATNumber>
							</xsl:for-each>
						</NameAddress>
						<xsl:for-each select="ns0:Contact">
							<xsl:variable name="var75_cur" select="."/>
							<Contact>
								<xsl:for-each select="ns0:ContactInformation">
									<xsl:variable name="var76_cur" select="."/>
									<ContactInformation>
										<xsl:value-of select="."/>
									</ContactInformation>
								</xsl:for-each>
								<xsl:for-each select="ns0:CommsContact">
									<xsl:variable name="var77_cur" select="."/>
									<CommsContact>
										<CommsNo>
											<xsl:value-of select="ns0:CommsNo"/>
										</CommsNo>
										<CommsChannel>
											<xsl:value-of select="ns0:CommsChannel"/>
										</CommsChannel>
									</CommsContact>
								</xsl:for-each>
							</Contact>
						</xsl:for-each>
					</AgentInvoiceAddress>
				</xsl:for-each>
				<Barges>
					<xsl:for-each select="ns0:Barges/ns0:Barge">
						<xsl:variable name="var78_cur" select="."/>
						<Barge>
							<BargeId>
								<VesselId>
									<xsl:value-of select="ns0:BargeId/ns0:VesselId"/>
								</VesselId>
								<VesselIdType>
									<xsl:value-of select="ns0:BargeId/ns0:VesselIDType"/>
								</VesselIdType>
							</BargeId>
							<BargeType>
								<xsl:value-of select="ns0:BargeType"/>
							</BargeType>
							<BargeName>
								<xsl:value-of select="ns0:BargeName"/>
							</BargeName>
							<EquipmentType>
								<xsl:value-of select="ns0:EquipmentType"/>
							</EquipmentType>
							<BargeDimensions>
								<Length>
									<xsl:value-of select="number(ns0:BargeDimensions/ns0:Length)"/>
								</Length>
								<Width>
									<xsl:value-of select="number(ns0:BargeDimensions/ns0:Width)"/>
								</Width>
								<Draught>
									<xsl:value-of select="number(ns0:BargeDimensions/ns0:Draught)"/>
								</Draught>
								<Tonnage>
									<xsl:value-of select="number(ns0:BargeDimensions/ns0:Tonnage)"/>
								</Tonnage>
								<xsl:for-each select="ns0:BargeDimensions/ns0:Airdraft">
									<xsl:variable name="var79_cur" select="."/>
									<Airdraft>
										<xsl:value-of select="number(.)"/>
									</Airdraft>
								</xsl:for-each>
							</BargeDimensions>
						</Barge>
					</xsl:for-each>
				</Barges>
				<xsl:for-each select="ns0:ContainerMatrixes">
					<xsl:variable name="var80_cur" select="."/>
					<ContainerMatrixes>
						<xsl:for-each select="ns0:ContainerMatrix">
							<xsl:variable name="var81_cur" select="."/>
							<ContainerMatrix>
								<ContRange>
									<xsl:value-of select="ns0:ContRange"/>
								</ContRange>
								<Number>
									<xsl:value-of select="number(ns0:Number)"/>
								</Number>
								<ContStatus>
									<xsl:value-of select="ns0:ContStatus"/>
								</ContStatus>
							</ContainerMatrix>
						</xsl:for-each>
					</ContainerMatrixes>
				</xsl:for-each>
				<xsl:for-each select="ns0:Consignments">
					<xsl:variable name="var82_cur" select="."/>
					<Consignments>
						<xsl:for-each select="ns0:Consignment">
							<xsl:variable name="var83_cur" select="."/>
							<Consignment>
								<SequenceNo>
									<xsl:value-of select="number(ns0:SequenceNo)"/>
								</SequenceNo>
								<xsl:for-each select="ns0:DepartureTime">
									<xsl:variable name="var84_cur" select="."/>
									<DepartureTime>
										<xsl:value-of select="."/>
									</DepartureTime>
								</xsl:for-each>
								<xsl:for-each select="ns0:PortOfLoading">
									<xsl:variable name="var85_cur" select="."/>
									<PortOfLoading>
										<Locode>
											<xsl:value-of select="ns0:Locode"/>
										</Locode>
										<xsl:for-each select="ns0:LocationName">
											<xsl:variable name="var86_cur" select="."/>
											<LocationName>
												<xsl:value-of select="."/>
											</LocationName>
										</xsl:for-each>
										<xsl:for-each select="ns0:TerminalCode">
											<xsl:variable name="var87_cur" select="."/>
											<ObjectCode>
												<xsl:value-of select="."/>
											</ObjectCode>
										</xsl:for-each>
										<xsl:for-each select="ns0:TerminalName">
											<xsl:variable name="var88_cur" select="."/>
											<TerminalName>
												<xsl:value-of select="."/>
											</TerminalName>
										</xsl:for-each>
										<xsl:for-each select="ns0:FairwaySectionCode">
											<xsl:variable name="var89_cur" select="."/>
											<FairwaySectionCode>
												<xsl:value-of select="."/>
											</FairwaySectionCode>
										</xsl:for-each>
										<xsl:for-each select="ns0:FairwayHectometre">
											<xsl:variable name="var90_cur" select="."/>
											<FairwayHectometre>
												<xsl:value-of select="."/>
											</FairwayHectometre>
										</xsl:for-each>
									</PortOfLoading>
								</xsl:for-each>
								<xsl:for-each select="ns0:PortOfDischarge">
									<xsl:variable name="var91_cur" select="."/>
									<PortOfDischarge>
										<Locode>
											<xsl:value-of select="ns0:Locode"/>
										</Locode>
										<xsl:for-each select="ns0:LocationName">
											<xsl:variable name="var92_cur" select="."/>
											<LocationName>
												<xsl:value-of select="."/>
											</LocationName>
										</xsl:for-each>
										<xsl:for-each select="ns0:TerminalCode">
											<xsl:variable name="var93_cur" select="."/>
											<ObjectCode>
												<xsl:value-of select="."/>
											</ObjectCode>
										</xsl:for-each>
										<xsl:for-each select="ns0:TerminalName">
											<xsl:variable name="var94_cur" select="."/>
											<TerminalName>
												<xsl:value-of select="."/>
											</TerminalName>
										</xsl:for-each>
										<xsl:for-each select="ns0:FairwaySectionCode">
											<xsl:variable name="var95_cur" select="."/>
											<FairwaySectionCode>
												<xsl:value-of select="."/>
											</FairwaySectionCode>
										</xsl:for-each>
										<xsl:for-each select="ns0:FairwayHectometre">
											<xsl:variable name="var96_cur" select="."/>
											<FairwayHectometre>
												<xsl:value-of select="."/>
											</FairwayHectometre>
										</xsl:for-each>
									</PortOfDischarge>
								</xsl:for-each>
								<xsl:for-each select="ns0:CargoReceiver">
									<xsl:variable name="var97_cur" select="."/>
									<CargoReceiver>
										<PartyFunction>
											<xsl:value-of select="ns0:PartyFunction"/>
										</PartyFunction>
										<xsl:for-each select="ns0:PartyId">
											<xsl:variable name="var98_cur" select="."/>
											<PartyId>
												<xsl:value-of select="."/>
											</PartyId>
										</xsl:for-each>
										<PartyName>
											<xsl:value-of select="ns0:PartyName"/>
										</PartyName>
										<xsl:for-each select="ns0:Street">
											<xsl:variable name="var99_cur" select="."/>
											<Street>
												<xsl:value-of select="."/>
											</Street>
										</xsl:for-each>
										<xsl:for-each select="ns0:City">
											<xsl:variable name="var100_cur" select="."/>
											<City>
												<xsl:value-of select="."/>
											</City>
										</xsl:for-each>
										<xsl:for-each select="ns0:PostalCode">
											<xsl:variable name="var101_cur" select="."/>
											<PostalCode>
												<xsl:value-of select="."/>
											</PostalCode>
										</xsl:for-each>
										<xsl:for-each select="ns0:Country">
											<xsl:variable name="var102_cur" select="."/>
											<Country>
												<xsl:value-of select="."/>
											</Country>
										</xsl:for-each>
										<xsl:for-each select="ns0:InvoiceNumber">
											<xsl:variable name="var103_cur" select="."/>
											<VATNumber>
												<xsl:value-of select="."/>
											</VATNumber>
										</xsl:for-each>
									</CargoReceiver>
								</xsl:for-each>
								<xsl:for-each select="ns0:CargoSender">
									<xsl:variable name="var104_cur" select="."/>
									<CargoSender>
										<PartyFunction>
											<xsl:value-of select="ns0:PartyFunction"/>
										</PartyFunction>
										<xsl:for-each select="ns0:PartyId">
											<xsl:variable name="var105_cur" select="."/>
											<PartyId>
												<xsl:value-of select="."/>
											</PartyId>
										</xsl:for-each>
										<PartyName>
											<xsl:value-of select="ns0:PartyName"/>
										</PartyName>
										<xsl:for-each select="ns0:Street">
											<xsl:variable name="var106_cur" select="."/>
											<Street>
												<xsl:value-of select="."/>
											</Street>
										</xsl:for-each>
										<xsl:for-each select="ns0:City">
											<xsl:variable name="var107_cur" select="."/>
											<City>
												<xsl:value-of select="."/>
											</City>
										</xsl:for-each>
										<xsl:for-each select="ns0:PostalCode">
											<xsl:variable name="var108_cur" select="."/>
											<PostalCode>
												<xsl:value-of select="."/>
											</PostalCode>
										</xsl:for-each>
										<xsl:for-each select="ns0:Country">
											<xsl:variable name="var109_cur" select="."/>
											<Country>
												<xsl:value-of select="."/>
											</Country>
										</xsl:for-each>
										<xsl:for-each select="ns0:InvoiceNumber">
											<xsl:variable name="var110_cur" select="."/>
											<VATNumber>
												<xsl:value-of select="."/>
											</VATNumber>
										</xsl:for-each>
									</CargoSender>
								</xsl:for-each>
								<xsl:for-each select="ns0:ArrivalTime">
									<xsl:variable name="var111_cur" select="."/>
									<ArrivalTime>
										<xsl:value-of select="."/>
									</ArrivalTime>
								</xsl:for-each>
								<xsl:for-each select="ns0:CargoHandeling">
									<xsl:variable name="var112_cur" select="."/>
									<CargoHandling>
										<xsl:value-of select="."/>
									</CargoHandling>
								</xsl:for-each>
								<GoodsItems>
									<xsl:for-each select="ns0:GoodsItems/ns0:GoodsItem">
										<xsl:variable name="var113_cur" select="."/>
										<GoodsItem>
											<GoodsItemNo>
												<xsl:value-of select="number(ns0:GoodsItemNo)"/>
											</GoodsItemNo>
											<xsl:for-each select="ns0:NumberOfPackages">
												<xsl:variable name="var114_cur" select="."/>
												<NumberOfPackages>
													<xsl:value-of select="number(.)"/>
												</NumberOfPackages>
											</xsl:for-each>
											<xsl:for-each select="ns0:AdditionalInfo">
												<xsl:variable name="var115_cur" select="."/>
												<AdditionalInfo>
													<TypeOfGood>
														<xsl:value-of select="ns0:TypeOfGood"/>
													</TypeOfGood>
													<xsl:for-each select="ns0:HSCode">
														<xsl:variable name="var116_cur" select="."/>
														<HSCode>
															<xsl:value-of select="."/>
														</HSCode>
													</xsl:for-each>
													<xsl:for-each select="ns0:CustomsStatus">
														<xsl:variable name="var117_cur" select="."/>
														<CustomsStatus>
															<xsl:value-of select="."/>
														</CustomsStatus>
													</xsl:for-each>
													<xsl:for-each select="ns0:CustomsRefNo">
														<xsl:variable name="var118_cur" select="."/>
														<CustomsRefNo>
															<xsl:value-of select="."/>
														</CustomsRefNo>
													</xsl:for-each>
													<xsl:for-each select="ns0:Overseas">
														<xsl:variable name="var119_cur" select="."/>
														<Overseas>
															<xsl:value-of select="."/>
														</Overseas>
													</xsl:for-each>
												</AdditionalInfo>
											</xsl:for-each>
											<xsl:for-each select="ns0:GoodsDescription">
												<xsl:variable name="var120_cur" select="."/>
												<GoodsDescription>
													<GoodsName>
														<xsl:value-of select="ns0:GoodsName"/>
													</GoodsName>
													<xsl:for-each select="ns0:NSTRCode">
														<xsl:variable name="var121_cur" select="."/>
														<NSTCode>
															<xsl:value-of select="."/>
														</NSTCode>
													</xsl:for-each>
													<xsl:for-each select="ns0:HSCode">
														<xsl:variable name="var122_cur" select="."/>
														<HSCode>
															<xsl:value-of select="."/>
														</HSCode>
													</xsl:for-each>
													<xsl:for-each select="ns0:GoodsFreeRemark">
														<xsl:variable name="var123_cur" select="."/>
														<GoodsFreeRemark>
															<xsl:value-of select="."/>
														</GoodsFreeRemark>
													</xsl:for-each>
												</GoodsDescription>
											</xsl:for-each>
											<xsl:for-each select="ns0:DangerousGoodsInfo">
												<xsl:variable name="var124_cur" select="."/>
												<DangerousGoodsInfo>
													<DangerousGoods>
														<Regulation>
															<xsl:choose>
															<xsl:when test="ns0:DangerousGoods/ns0:Regulation = 'ANR'">ADN</xsl:when>
															<xsl:otherwise>
																<xsl:value-of select="ns0:DangerousGoods/ns0:Regulation"/>
															</xsl:otherwise>
															</xsl:choose>
														</Regulation>
														<Classification>
															<xsl:value-of select="ns0:DangerousGoods/ns0:Classification"/>
														</Classification>
														<xsl:for-each select="ns0:DangerousGoods/ns0:AdditionalClassification">
															<xsl:variable name="var125_cur" select="."/>
															<AdditionalClassification>
																<xsl:value-of select="."/>
															</AdditionalClassification>
														</xsl:for-each>
														<UNNumber>
															<xsl:value-of select="ns0:DangerousGoods/ns0:UNNumber"/>
														</UNNumber>
														<xsl:for-each select="ns0:DangerousGoods/ns0:Flashpoint">
															<xsl:variable name="var126_cur" select="."/>
															<Flashpoint>
																<xsl:value-of select="number(.)"/>
															</Flashpoint>
														</xsl:for-each>
														<xsl:for-each select="ns0:DangerousGoods/ns0:FlashpointUnit">
															<xsl:variable name="var127_cur" select="."/>
															<FlashpointUnit>
																<xsl:value-of select="."/>
															</FlashpointUnit>
														</xsl:for-each>
														<xsl:for-each select="ns0:DangerousGoods/ns0:PackingGroup">
															<xsl:variable name="var128_cur" select="."/>
															<PackingGroup>
																<xsl:value-of select="."/>
															</PackingGroup>
														</xsl:for-each>
														<xsl:for-each select="ns0:DangerousGoods/ns0:EMSNumber">
															<xsl:variable name="var129_cur" select="."/>
															<EMSNumber>
																<xsl:value-of select="."/>
															</EMSNumber>
														</xsl:for-each>
														<xsl:for-each select="ns0:DangerousGoods/ns0:MFAGNumber">
															<xsl:variable name="var130_cur" select="."/>
															<MFAGNumber>
																<xsl:value-of select="."/>
															</MFAGNumber>
														</xsl:for-each>
														<xsl:for-each select="ns0:DangerousGoods/ns0:HazardPlacard">
															<xsl:variable name="var131_cur" select="."/>
															<HazardPlacard>
																<xsl:for-each select="ns0:HazardPlacardUpper">
																	<xsl:variable name="var132_cur" select="."/>
																	<HazardPlacardUpper>
																		<xsl:value-of select="."/>
																	</HazardPlacardUpper>
																</xsl:for-each>
																<xsl:for-each select="ns0:HazardPlacardLower">
																	<xsl:variable name="var133_cur" select="."/>
																	<HazardPlacardLower>
																		<xsl:value-of select="."/>
																	</HazardPlacardLower>
																</xsl:for-each>
															</HazardPlacard>
														</xsl:for-each>
													</DangerousGoods>
													<TechnicalName>
														<xsl:value-of select="ns0:TechnicalName"/>
													</TechnicalName>
													<NetWeight>
														<xsl:value-of select="number(ns0:NetWeight)"/>
													</NetWeight>
													<ProperShippingName>
														<xsl:value-of select="ns0:Synonym"/>
													</ProperShippingName>
													<xsl:for-each select="$var113_cur/ns0:GoodSplitGoodsPlacements">
														<xsl:variable name="var134_cur" select="."/>
														<LimitedQuantity>
															<xsl:value-of select="(sum(ns0:SplitGoodsPlacement/ns0:Weight) &lt;= 0)"/>
														</LimitedQuantity>
													</xsl:for-each>
												</DangerousGoodsInfo>
											</xsl:for-each>
											<xsl:for-each select="ns0:GoodSplitGoodsPlacements">
												<xsl:variable name="var135_cur" select="."/>
												<GoodSplitGoodsPlacements>
													<SplitGoodsPlacement>
														<Placement>
															<VesselId>
																<xsl:value-of select="ns0:SplitGoodsPlacement/ns0:Placement/ns0:VesselId"/>
															</VesselId>
															<VesselIdType>
																<xsl:value-of select="ns0:SplitGoodsPlacement/ns0:Placement/ns0:VesselIDType"/>
															</VesselIdType>
														</Placement>
														<Weight>
															<xsl:choose>
																<xsl:when test="ns0:SplitGoodsPlacement/ns0:Weight !=''">
																	<xsl:value-of select="number(ns0:SplitGoodsPlacement/ns0:Weight)"/>
																</xsl:when>
																<xsl:otherwise>0</xsl:otherwise>
															</xsl:choose>
														</Weight>
														<xsl:for-each select="ns0:SplitGoodsPlacement/ns0:NetWeight">
															<xsl:variable name="var136_cur" select="."/>
															<NetWeight>
																<xsl:value-of select="number(.)"/>
															</NetWeight>
														</xsl:for-each>
														<xsl:for-each select="ns0:SplitGoodsPlacement/ns0:Volume">
															<xsl:variable name="var137_cur" select="."/>
															<Volume>
																<xsl:value-of select="number(.)"/>
															</Volume>
														</xsl:for-each>
													</SplitGoodsPlacement>
													<xsl:for-each select="ns0:ContainerStowage">
														<xsl:variable name="var138_cur" select="."/>
														<ContainerStowage>
															<ContainerIdentificationCode>
																<xsl:value-of select="ns0:ContainerIdentificationCode"/>
															</ContainerIdentificationCode>
															<xsl:for-each select="ns0:ContainerType">
																<xsl:variable name="var139_cur" select="."/>
																<ContainerType>
																	<xsl:value-of select="."/>
																</ContainerType>
															</xsl:for-each>
															<xsl:for-each select="ns0:StowageLocation">
																<xsl:variable name="var140_cur" select="."/>
																<StowageLocation>
																	<xsl:value-of select="."/>
																</StowageLocation>
															</xsl:for-each>
															<Weight>
																<xsl:value-of select="number(ns0:Weight)"/>
															</Weight>
															<xsl:for-each select="ns0:NetWeight">
																<xsl:variable name="var141_cur" select="."/>
																<NetWeight>
																	<xsl:value-of select="number(.)"/>
																</NetWeight>
															</xsl:for-each>
															<xsl:for-each select="ns0:Volume">
																<xsl:variable name="var142_cur" select="."/>
																<Volume>
																	<xsl:value-of select="number(.)"/>
																</Volume>
															</xsl:for-each>
														</ContainerStowage>
													</xsl:for-each>
												</GoodSplitGoodsPlacements>
											</xsl:for-each>
											<xsl:for-each select="ns0:TypeOfPackages">
												<xsl:variable name="var143_cur" select="."/>
												<TypeOfPackages>
													<xsl:value-of select="."/>
												</TypeOfPackages>
											</xsl:for-each>
										</GoodsItem>
									</xsl:for-each>
								</GoodsItems>
							</Consignment>
						</xsl:for-each>
					</Consignments>
				</xsl:for-each>
			</xsl:for-each>
		</ERINOT>
	</xsl:template>
</xsl:stylesheet>
