@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Rental Item Interface Entity'
define view entity ZI_RNT_ITEM as select from zrnt_item {
 key item_uuid as ItemUuid, rental_uuid as RentalUuid, item_no as ItemNo, equipment_category as EquipmentCategory,
 equipment_type as EquipmentType, description as Description,
 @Semantics.quantity.unitOfMeasure: 'QuantityUnit' quantity as Quantity, quantity_unit as QuantityUnit,
 rate as Rate, rate_unit as RateUnit, currency_code as CurrencyCode, contract_item as ContractItem, po_item as PoItem,
 created_by as CreatedBy, created_at as CreatedAt, last_changed_by as LastChangedBy, last_changed_at as LastChangedAt,
 local_last_changed_at as LocalLastChangedAt }
