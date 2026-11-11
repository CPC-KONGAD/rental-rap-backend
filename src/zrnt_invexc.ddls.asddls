@EndUserText.label : 'Rental invoice exceptions'
@AbapCatalog.enhancement.category : #NOT_EXTENSIBLE
define table zrnt_invexc {
  key client : abap.clnt not null; key exception_uuid : sysuuid_x16 not null; rental_uuid : sysuuid_x16 not null;
  supplier_invoice : abap.char(10); fiscal_year : abap.numc(4); exception_type : abap.char(30);
  expected_quantity : abap.dec(13,3); invoiced_quantity : abap.dec(13,3); expected_rate : abap.dec(15,3); invoiced_rate : abap.dec(15,3);
  expected_duration : abap.int4; invoiced_duration : abap.int4; variance_amount : abap.dec(23,2); currency_code : abap.cuky;
  resolution_status : abap.char(20); resolution_text : abap.char(255);
  created_by : abp_creation_user; created_at : abp_creation_tstmpl; last_changed_by : abp_lastchange_user;
  last_changed_at : abp_lastchange_tstmpl; local_last_changed_at : abp_locinst_lastchange_tstmpl;
}
