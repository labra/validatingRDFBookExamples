<sch:schema 
  xmlns:sch="http://purl.oclc.org/dsdl/schematron">
 <sch:pattern name="Check Ids">
  <sch:rule context="student">
   <sch:assert test="starts-with(@id,'S')"
   >IDs must start by S</sch:assert>
  </sch:rule>
 </sch:pattern>
 <sch:pattern name="Check mean">
  <sch:rule context="average">
    <sch:assert 
      test="sum(//student/grade) div 
	        count(//student/grade) = ." 
	  >Value of <sch:name/> does not match mean 
     </sch:assert>
   </sch:rule>
 </sch:pattern>
</sch:schema>

