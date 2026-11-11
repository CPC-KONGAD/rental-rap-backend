@EndUserText.label : 'Rental extension persistence'
@AbapCatalog.enhancement.category : #NOT_EXTENSIBLE
define table zrnt_ext {
  key client : abap.clnt not null; key extension_uuid : sysuuid_x16 not null; rental_uuid : sysuuid_x16 not null;
  previous_end_date : abap.dats; requested_end_date : abap.dats; additional_cost : abap.dec(23,2); currency_code : abap.cuky;
  reason : abap.char(255); approval_status : abap.char(20);
  created_by : abp_creation_user; created_at : abp_creation_tstmpl; last_changed_by : abp_lastchange_user;
  last_changed_at : abp_lastchange_tstmpl; local_last_changed_at : abp_locinst_lastchange_tstmpl;
}
