CLASS ztax_code DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
   INTERFACES IF_OO_ADT_CLASSRUN .
 CLASS-METHODS UPLOADDATA .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZTAX_CODE IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main .
  ME->uploaddata(  ) .
  ENDMETHOD.


  METHOD UPLOADDATA .

  DATA : LTTABLE TYPE TABLE OF YTAX_CODE2.
         LTTABLE = VALUE #(
         ( TAXCODE =  'Z1' taxcodedescription =  'INDIA: O/P Tax code dummy' gstrate = '0' )
         ( TAXCODE =  '11' taxcodedescription =  'FI OT : 5% CGST & SGST'    gstrate = '5' )
         ( TAXCODE =  '12' taxcodedescription =  'FI OT : 12% CGST & SGST'   gstrate = '12' )
         ( TAXCODE =  '13' taxcodedescription =  'FI OT : 18% CGST & SGST'   gstrate = '18' )
         ( TAXCODE =  '14' taxcodedescription =  'FI OT : 28% CGST & SGST'   gstrate = '28' )
         ( TAXCODE =  '21' taxcodedescription =  'FI OT : 5% IGST'           gstrate = '5' )
         ( TAXCODE =  '22' taxcodedescription =  'FI OT : 12% IGST'          gstrate = '12' )
         ( TAXCODE =  '23' taxcodedescription =  'FI OT : 18% IGST'          gstrate = '18' )
         ( TAXCODE =  '24' taxcodedescription =  'FI OT : 28% IGST'          gstrate = '28' )
         ( TAXCODE =  '31' taxcodedescription =  'OT : 5% CGST & SGST +TCS'  gstrate = '5' )
         ( TAXCODE =  '32' taxcodedescription =  'OT : 12% CGST & SGST +TCS' gstrate = '12' )
         ( TAXCODE =  '33' taxcodedescription =  'OT : 18% CGST & SGST +TCS' gstrate = '18' )
         ( TAXCODE =  '34' taxcodedescription =  'OT : 28% CGST & SGST +TCS' gstrate = '28' )
         ( TAXCODE =  '50' taxcodedescription =  'OT: 0% OUTPUT TAX'         gstrate = '0' )
         ( TAXCODE =  '51' taxcodedescription =  'OT : 5% IGST +TCS'         gstrate = '5' )
         ( TAXCODE =  '52' taxcodedescription =  'OT : 12% IGST +TCS'        gstrate = '12' )
         ( TAXCODE =  '53' taxcodedescription =  'OT : 18% IGST +TCS'        gstrate = '18' )
         ( TAXCODE =  '54' taxcodedescription =  'OT : 28% IGST +TCS'        gstrate = '28' )
         ( TAXCODE =  'A0' taxcodedescription =  'Exempted/Nil Rated'        gstrate = '0' )
         ( TAXCODE =  'A1' taxcodedescription =  'SALES OT: 5% (CGST SGST)'  gstrate = '5' )
         ( TAXCODE =  'A2' taxcodedescription =  'SALES OT: 12% (CGST SGST)' gstrate = '12' )
         ( TAXCODE =  'A3' taxcodedescription =  'SALES OT: 18% (CGST SGST)' gstrate = '18' )
         ( TAXCODE =  'A4' taxcodedescription =  'SALES OT: 28% (CGST SGST)' gstrate = '28' )
         ( TAXCODE =  'A5' taxcodedescription =  'SALES OT: 5% (IGST)'       gstrate = '5' )
         ( TAXCODE =  'A6' taxcodedescription =  'SALES OT: 12% (IGST)'      gstrate = '12' )
         ( TAXCODE =  'A7' taxcodedescription =  'SALES OT: 18% (IGST)'      gstrate = '18' )
         ( TAXCODE =  'A8' taxcodedescription =  'SALES OT: 28% (IGST)'      gstrate = '28' )
         ( TAXCODE =  'B0' taxcodedescription =  '0% EXPORT'                 gstrate = '0' )
         ( TAXCODE =  'B1' taxcodedescription =  'EXORT : 5% (IGST)'         gstrate = '5' )
         ( TAXCODE =  'B2' taxcodedescription =  'EXORT : 12% (IGST)'        gstrate = '12' )
         ( TAXCODE =  'B3' taxcodedescription =  'EXORT : 18% (IGST)'        gstrate = '18' )
         ( TAXCODE =  'B4' taxcodedescription =  'EXORT : 28% (IGST)'        gstrate = '28' )
         ( TAXCODE =  'G0' taxcodedescription =  'EXEMPTED TAX INPUT'        gstrate = '0' )
         ( TAXCODE =  'I1' taxcodedescription =  'IMPORT 5%( IGST)'          gstrate = '5' )
         ( TAXCODE =  'I2' taxcodedescription =  'IMPORT 12%( IGST)'         gstrate = '12' )
         ( TAXCODE =  'I3' taxcodedescription =  'IMPORT 18%( IGST)'         gstrate = '18' )
         ( TAXCODE =  'I4' taxcodedescription =  'IMPORT 28%( IGST)'         gstrate = '28' )
         ( TAXCODE =  'M1' taxcodedescription =  'IN : 5% CGST & SGST(RCM NON ELIGIBLE)'  gstrate = '5' )
         ( TAXCODE =  'M2' taxcodedescription =  'IN : 12% CGST & SGST(RCM NON ELIGIBLE)' gstrate = '12' )
         ( TAXCODE =  'M3' taxcodedescription =  'IN : 18% CGST & SGST(RCM NON ELIGIBLE)' gstrate = '18' )
         ( TAXCODE =  'M4' taxcodedescription =  'IN : 28% CGST & SGST(RCM NON ELIGIBLE)' gstrate = '28' )
         ( TAXCODE =  'M5' taxcodedescription =  'IN : 5% IGST(RCM NON ELIGIBLE)'         gstrate = '5' )
         ( TAXCODE =  'M6' taxcodedescription =  'IN : 12% IGST(RCM NON ELIGIBLE)'        gstrate = '12' )
         ( TAXCODE =  'M7' taxcodedescription =  'IN : 18% IGST(RCM NON ELIGIBLE)'        gstrate = '18' )
         ( TAXCODE =  'M8' taxcodedescription =  'IN : 28% IGST(RCM NON ELIGIBLE)'        gstrate = '28' )
         ( TAXCODE =  'N1' taxcodedescription =  'IN : 5% CGST & SGST(NCM NON ELIGIBLE)'  gstrate = '5' )
         ( TAXCODE =  'N2' taxcodedescription =  'IN : 12% CGST & SGST(NCM NON ELIGIBLE)' gstrate = '12' )
         ( TAXCODE =  'N3' taxcodedescription =  'IN : 18% CGST & SGST(NCM NON ELIGIBLE)' gstrate = '18' )
         ( TAXCODE =  'N4' taxcodedescription =  'IN : 28% CGST & SGST(NCM NON ELIGIBLE)' gstrate = '28' )
         ( TAXCODE =  'N5' taxcodedescription =  'IN : 5% IGST(NCM NON ELIGIBLE)'         gstrate = '5' )
         ( TAXCODE =  'N6' taxcodedescription =  'IN : 12% IGST(NCM NON ELIGIBLE)'        gstrate = '12' )
         ( TAXCODE =  'N7' taxcodedescription =  'IN : 18% IGST(NCM NON ELIGIBLE)'        gstrate = '18' )
         ( TAXCODE =  'N8' taxcodedescription =  'IN : 28% IGST(NCM NON ELIGIBLE)'        gstrate = '28' )
         ( TAXCODE =  'R1' taxcodedescription =  'EL-RCM 5% CGST & SGST'                  gstrate = '5' )
         ( TAXCODE =  'R2' taxcodedescription =  'EL-RCM 12% CGST & SGST'                 gstrate = '12' )
         ( TAXCODE =  'R3' taxcodedescription =  'EL-RCM 18% CGST & SGST'                 gstrate = '18' )
         ( TAXCODE =  'R4' taxcodedescription =  'EL-RCM 28% CGST & SGST'                 gstrate = '28' )
         ( TAXCODE =  'R5' taxcodedescription =  'EL-RCM 5% IGST'                         gstrate = '5' )
         ( TAXCODE =  'R6' taxcodedescription =  'EL-RCM 12% IGST'                        gstrate = '12' )
         ( TAXCODE =  'R7' taxcodedescription =  'EL-RCM 18% IGST'                        gstrate = '18' )
         ( TAXCODE =  'R8' taxcodedescription =  'EL-RCM 28% IGST'                        gstrate = '28' )
         ( TAXCODE =  'TO' taxcodedescription =  'TCS TARGET TAX CODE'                    gstrate = '0' )
         ( TAXCODE =  'V0' taxcodedescription =  'IN::0% INPUT GST'                       gstrate = '0' )
         ( TAXCODE =  'V1' taxcodedescription =  'IN : 5% CGST & SGST'                    gstrate = '5' )
         ( TAXCODE =  'V2' taxcodedescription =  'IN : 12% CGST & SGST'                   gstrate = '12' )
         ( TAXCODE =  'V3' taxcodedescription =  'IN : 18% CGST & SGST'                   gstrate = '18' )
         ( TAXCODE =  'V4' taxcodedescription =  'IN : 28% CGST & SGST'                   gstrate = '28' )
         ( TAXCODE =  'V5' taxcodedescription =  'IN : 5% IGST'                           gstrate = '5' )
         ( TAXCODE =  'V6' taxcodedescription =  'IN : 12% IGST'                          gstrate = '12' )
         ( TAXCODE =  'V7' taxcodedescription =  'IN : 18% IGST'                          gstrate = '18' )
         ( TAXCODE =  'V8' taxcodedescription =  'IN : 28% IGST'                          gstrate = '28' ) ).
         MODIFY YTAX_CODE2 FROM TABLE @LTTABLE .
         COMMIT WORK AND WAIT .

  ENDMETHOD.
ENDCLASS.
