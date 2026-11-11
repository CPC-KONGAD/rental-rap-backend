@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Rental Equipment Interface Entity'
define view entity ZI_RNT_EQUIP as select from zrnt_equip {
 key equipment_uuid as EquipmentUuid, rental_uuid as RentalUuid, item_uuid as ItemUuid, sap_equipment as SapEquipment,
 vendor_equipment_id as VendorEquipmentId, serial_number as SerialNumber, manufacturer as Manufacturer, model_number as ModelNumber,
 current_location as CurrentLocation, equipment_status as EquipmentStatus, substitution_indicator as SubstitutionIndicator,
 delivery_date as DeliveryDate, return_date as ReturnDate, created_by as CreatedBy, created_at as CreatedAt,
 last_changed_by as LastChangedBy, last_changed_at as LastChangedAt, local_last_changed_at as LocalLastChangedAt }
