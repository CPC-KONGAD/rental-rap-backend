@EndUserText.label : 'Rental item persistence'
@AbapCatalog.enhancement.category : #NOT_EXTENSIBLE
define table zrnt_item {
  key client : abap.clnt not null;
  key item_uuid : sysuuid_x16 not null;
  rental_uuid : sysuuid_x16 not null;
  item_no : abap.numc(6);
  equipment_category : abap.char(20);
  equipment_type : abap.char(40);
  description : abap.char(80);
  quantity : abap.dec(13,3);
  quantity_unit : abap.unit(3);
  rate : abap.dec(15,3);
  rate_unit : abap.char(10);
  currency_code : abap.cuky;
  contract_item : abap.numc(5);
  po_item : abap.numc(5);
  created_by : abp_creation_user; created_at : abp_creation_tstmpl;
  last_changed_by : abp_lastchange_user; last_changed_at : abp_lastchange_tstmpl;
  local_last_changed_at : abp_locinst_lastchange_tstmpl;
}
