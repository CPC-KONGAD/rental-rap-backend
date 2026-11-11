@EndUserText.label : 'Rental lifecycle events'
@AbapCatalog.enhancement.category : #NOT_EXTENSIBLE
define table zrnt_event {
  key client : abap.clnt not null; key event_uuid : sysuuid_x16 not null; rental_uuid : sysuuid_x16 not null;
  event_type : abap.char(30); event_date : abap.dats; event_time : abap.tims; location : abap.char(60);
  event_text : abap.char(255); reference_document : abap.char(20);
  created_by : abp_creation_user; created_at : abp_creation_tstmpl; last_changed_by : abp_lastchange_user;
  last_changed_at : abp_lastchange_tstmpl; local_last_changed_at : abp_locinst_lastchange_tstmpl;
}
