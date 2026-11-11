@EndUserText.label : 'Rental equipment persistence'
@AbapCatalog.enhancement.category : #NOT_EXTENSIBLE
define table zrnt_equip {
  key client : abap.clnt not null; key equipment_uuid : sysuuid_x16 not null;
  rental_uuid : sysuuid_x16 not null; item_uuid : sysuuid_x16;
  sap_equipment : abap.char(18); vendor_equipment_id : abap.char(40); serial_number : abap.char(40);
  manufacturer : abap.char(40); model_number : abap.char(40); current_location : abap.char(60);
  equipment_status : abap.char(20); substitution_indicator : abap_boolean; delivery_date : abap.dats; return_date : abap.dats;
  created_by : abp_creation_user; created_at : abp_creation_tstmpl; last_changed_by : abp_lastchange_user;
  last_changed_at : abp_lastchange_tstmpl; local_last_changed_at : abp_locinst_lastchange_tstmpl;
}
