CodeSystem: SymptomTemporary
Id: SymptomTemporary
Title: "Temporary Symptom Codes"
Description: "A code system that has codes for use in the IG that will eventually be migrated to other code systems such as LOINC or THO."
* #symptom "Symptom" "Used to indicate the category of an observation when it is a symptom."
* #symptomAbsent "Symptom Absent" "Used to indicate the absence of a symptom as opposed to the current LOINC code which indicates the presence of a symptom."
* ^experimental = false
* ^caseSensitive = true

ValueSet: AffectiveGrade
Id: AffectiveGrade
Title: "Affective Grade"
Description: "Set of codes from LOINC that describe a patient's affective grade"
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"
* ^experimental = true
* codes from system http://loinc.org where concept is-a "75798-9"

ValueSet: SpeedOfOnset
Id: SpeedOfOnset
Title: "Speed of Onset"
Description: "Set of codes from SNOMED that describe the speed of onset of a patient's symptom"
* ^copyright = """This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement

The SNOMED International IPS Terminology is distributed by International Health Terminology Standards Development Organisation, trading as SNOMED International, and is subject the terms of the Creative Commons Attribution 4.0 International Public License. For more information, see SNOMED IPS Terminology

The HL7 International IPS implementation guides incorporate SNOMED CT®, used by permission of the International Health Terminology Standards Development Organisation, trading as SNOMED International. SNOMED CT was originally created by the College of American Pathologists. SNOMED CT is a registered trademark of the International Health Terminology Standards Development Organisation, all rights reserved. Implementers of SNOMED CT should review usage terms or directly contact SNOMED International: info@snomed.org"""
* ^experimental = false

* http://snomed.info/sct#61751001
* http://snomed.info/sct#385315009

ValueSet: CommonSymptomCodes
Id: CommonSymptomCodes
Title: "Common Set of Symptom Codes"
Description: "An initial set of Symptom Codes representing the most common symptoms."
* ^copyright = """This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement

The SNOMED International IPS Terminology is distributed by International Health Terminology Standards Development Organisation, trading as SNOMED International, and is subject the terms of the Creative Commons Attribution 4.0 International Public License. For more information, see SNOMED IPS Terminology

The HL7 International IPS implementation guides incorporate SNOMED CT®, used by permission of the International Health Terminology Standards Development Organisation, trading as SNOMED International. SNOMED CT was originally created by the College of American Pathologists. SNOMED CT is a registered trademark of the International Health Terminology Standards Development Organisation, all rights reserved. Implementers of SNOMED CT should review usage terms or directly contact SNOMED International: info@snomed.org"""
* ^experimental = false

* http://snomed.info/sct#51197009
* http://snomed.info/sct#53430007
* http://snomed.info/sct#116289008
* http://snomed.info/sct#25064002
* http://snomed.info/sct#403364000
* http://snomed.info/sct#279039007
* http://snomed.info/sct#30473006
* http://snomed.info/sct#106131003
* http://snomed.info/sct#84229001
* http://snomed.info/sct#422587007
* http://snomed.info/sct#247950007
* http://snomed.info/sct#249473004
* http://snomed.info/sct#198436008
* http://snomed.info/sct#386661006
* http://snomed.info/sct#23924001
* http://snomed.info/sct#271594007
* http://snomed.info/sct#300359004
* http://snomed.info/sct#16331000
* http://snomed.info/sct#56018004
* http://snomed.info/sct#267102003
* http://snomed.info/sct#68235000
* http://snomed.info/sct#64531003
* http://snomed.info/sct#31908003
* http://snomed.info/sct#42984000
* http://snomed.info/sct#43724002
* http://snomed.info/sct#278040002
* http://snomed.info/sct#106076001
* http://snomed.info/sct#165232002
* http://snomed.info/sct#225038006
* http://snomed.info/sct#22253000
* http://snomed.info/sct#44169009
* http://snomed.info/sct#36955009
* http://snomed.info/sct#57676002
* http://snomed.info/sct#48694002
* http://snomed.info/sct#39898005
* http://snomed.info/sct#14760008
* http://snomed.info/sct#21522001
* http://snomed.info/sct#62315008
* http://snomed.info/sct#404640003
* http://snomed.info/sct#80313002
* http://snomed.info/sct#267036007
* http://snomed.info/sct#366979004
* http://snomed.info/sct#49727002
* http://snomed.info/sct#29857009
* http://snomed.info/sct#286933003
* http://snomed.info/sct#6471006
* http://snomed.info/sct#55300003
* http://snomed.info/sct#24199005
* http://snomed.info/sct#365852007

ValueSet: FunctionalClassification
Id: FunctionalClassification
Title: "Functional Classification Codes"
Description: "The set of codes from WHO's International Classification of Functioning, Disability, and Health code system."
* ^experimental = false
* codes from system http://hl7.org/fhir/sid/icf

ValueSet: QualityCodes
Id: QualityCodes
Title: "Quality Codes"
Description: "Set of SNOMED codes to describe the symptom quality."
* ^copyright = """This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement

The SNOMED International IPS Terminology is distributed by International Health Terminology Standards Development Organisation, trading as SNOMED International, and is subject the terms of the Creative Commons Attribution 4.0 International Public License. For more information, see SNOMED IPS Terminology

The HL7 International IPS implementation guides incorporate SNOMED CT®, used by permission of the International Health Terminology Standards Development Organisation, trading as SNOMED International. SNOMED CT was originally created by the College of American Pathologists. SNOMED CT is a registered trademark of the International Health Terminology Standards Development Organisation, all rights reserved. Implementers of SNOMED CT should review usage terms or directly contact SNOMED International: info@snomed.org"""
* ^experimental = false

* include codes from system SNOMED_CT where concept is-a #410720000 //not quite right. number is correct, but i want the 19 children, not the 48

ValueSet: SeverityCodes
Id: SeverityCodes
Title: "Severity Codes"
Description: "Set of SNOMED codes to describe the symptom severity."
* ^copyright = """This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement

The SNOMED International IPS Terminology is distributed by International Health Terminology Standards Development Organisation, trading as SNOMED International, and is subject the terms of the Creative Commons Attribution 4.0 International Public License. For more information, see SNOMED IPS Terminology

The HL7 International IPS implementation guides incorporate SNOMED CT®, used by permission of the International Health Terminology Standards Development Organisation, trading as SNOMED International. SNOMED CT was originally created by the College of American Pathologists. SNOMED CT is a registered trademark of the International Health Terminology Standards Development Organisation, all rights reserved. Implementers of SNOMED CT should review usage terms or directly contact SNOMED International: info@snomed.org"""
* ^experimental = false

* include codes from system SNOMED_CT where concept is-a #272141005 

ValueSet: ClinicalCourseCodes
Id: ClinicalCourseCodes
Title: "Clinical Course Codes"
Description: "Set of SNOMED codes to describe the clinical course of the symptom."
* ^copyright = """This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement

The SNOMED International IPS Terminology is distributed by International Health Terminology Standards Development Organisation, trading as SNOMED International, and is subject the terms of the Creative Commons Attribution 4.0 International Public License. For more information, see SNOMED IPS Terminology

The HL7 International IPS implementation guides incorporate SNOMED CT®, used by permission of the International Health Terminology Standards Development Organisation, trading as SNOMED International. SNOMED CT was originally created by the College of American Pathologists. SNOMED CT is a registered trademark of the International Health Terminology Standards Development Organisation, all rights reserved. Implementers of SNOMED CT should review usage terms or directly contact SNOMED International: info@snomed.org"""
* ^experimental = false

* include codes from system SNOMED_CT where concept is-a #424124008 

ValueSet: TrendCodes
Id: TrendCodes
Title: "Trend Codes"
Description: "Set of SNOMED codes to describe the trend of the symptom."
* ^copyright = """This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement

The SNOMED International IPS Terminology is distributed by International Health Terminology Standards Development Organisation, trading as SNOMED International, and is subject the terms of the Creative Commons Attribution 4.0 International Public License. For more information, see SNOMED IPS Terminology

The HL7 International IPS implementation guides incorporate SNOMED CT®, used by permission of the International Health Terminology Standards Development Organisation, trading as SNOMED International. SNOMED CT was originally created by the College of American Pathologists. SNOMED CT is a registered trademark of the International Health Terminology Standards Development Organisation, all rights reserved. Implementers of SNOMED CT should review usage terms or directly contact SNOMED International: info@snomed.org"""
* ^experimental = false

* include codes from system SNOMED_CT where concept is-a #263703002 

ValueSet: TriggersOrExacerbatingFactorCodes
Id: TriggersOrExacerbatingFactorCodes
Title: "Triggers or Exacerbating Factor Codes"
Description: "Set of SNOMED codes to describe triggers or factors which exacerbate the symptom."
* ^copyright = """This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement

The SNOMED International IPS Terminology is distributed by International Health Terminology Standards Development Organisation, trading as SNOMED International, and is subject the terms of the Creative Commons Attribution 4.0 International Public License. For more information, see SNOMED IPS Terminology

The HL7 International IPS implementation guides incorporate SNOMED CT®, used by permission of the International Health Terminology Standards Development Organisation, trading as SNOMED International. SNOMED CT was originally created by the College of American Pathologists. SNOMED CT is a registered trademark of the International Health Terminology Standards Development Organisation, all rights reserved. Implementers of SNOMED CT should review usage terms or directly contact SNOMED International: info@snomed.org"""
* ^experimental = false

* http://snomed.info/sct#282260003 
* http://snomed.info/sct#49727002 
* http://snomed.info/sct#289123006 
* http://snomed.info/sct#18949003 
* http://snomed.info/sct#255710008 
* http://snomed.info/sct#226029000 
* http://snomed.info/sct#48694002 
* http://snomed.info/sct#84229001 
* http://snomed.info/sct#102491009 
* http://snomed.info/sct#277773003  
* http://snomed.info/sct#113011001 
* http://snomed.info/sct#397578001 
* http://snomed.info/sct#128975004 
* http://snomed.info/sct#33586001  
* http://snomed.info/sct#76067001 
* http://snomed.info/sct#408797004 
* http://snomed.info/sct#10904000 
* http://snomed.info/sct#122546009 

ValueSet: AlleviatingFactorCodes
Id: AlleviatingFactorCodes
Title: "Alleviating Factor Codes"
Description: "Set of SNOMED codes to describe factors which alleviate the symptom."
* ^copyright = """This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement

The SNOMED International IPS Terminology is distributed by International Health Terminology Standards Development Organisation, trading as SNOMED International, and is subject the terms of the Creative Commons Attribution 4.0 International Public License. For more information, see SNOMED IPS Terminology

The HL7 International IPS implementation guides incorporate SNOMED CT®, used by permission of the International Health Terminology Standards Development Organisation, trading as SNOMED International. SNOMED CT was originally created by the College of American Pathologists. SNOMED CT is a registered trademark of the International Health Terminology Standards Development Organisation, all rights reserved. Implementers of SNOMED CT should review usage terms or directly contact SNOMED International: info@snomed.org"""
* ^experimental = false

* http://snomed.info/sct#44868003  
* http://snomed.info/sct#231107005  
* http://snomed.info/sct#394615007  
* http://snomed.info/sct#225316001  
* http://snomed.info/sct#7704007  
* http://snomed.info/sct#182548004  
* http://snomed.info/sct#182660006  
* http://snomed.info/sct#183135000  
* http://snomed.info/sct#414039005  
* http://snomed.info/sct#719078002   
* http://snomed.info/sct#226029000  
* http://snomed.info/sct#91251008  
* http://snomed.info/sct#133921002  
* http://snomed.info/sct#228565006   
* http://snomed.info/sct#266694003  
* http://snomed.info/sct#19997007  
* http://snomed.info/sct#266686005  
* http://snomed.info/sct#387854002   
* http://snomed.info/sct#416608005   
* http://snomed.info/sct#21065008    
* http://snomed.info/sct#386370001    
* http://snomed.info/sct#84478008    
* http://snomed.info/sct#11609002    
* http://snomed.info/sct#308739004    
* http://snomed.info/sct#128975004    
* http://snomed.info/sct#33586001    
* http://snomed.info/sct#386342003    
* http://snomed.info/sct#311767007    
* http://snomed.info/sct#386476006   

ValueSet: FrequencyCodes
Id: FrequencyCodes
Title: "Frequency Codes"
Description: "Set of SNOMED codes to describe the frequency of experiencing the symptom."
* ^copyright = """This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement

The SNOMED International IPS Terminology is distributed by International Health Terminology Standards Development Organisation, trading as SNOMED International, and is subject the terms of the Creative Commons Attribution 4.0 International Public License. For more information, see SNOMED IPS Terminology

The HL7 International IPS implementation guides incorporate SNOMED CT®, used by permission of the International Health Terminology Standards Development Organisation, trading as SNOMED International. SNOMED CT was originally created by the College of American Pathologists. SNOMED CT is a registered trademark of the International Health Terminology Standards Development Organisation, all rights reserved. Implementers of SNOMED CT should review usage terms or directly contact SNOMED International: info@snomed.org"""
* ^experimental = false

* include codes from system SNOMED_CT where concept is-a #272123002  