@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Rental Lifecycle Event Interface Entity'
define view entity ZI_RNT_EVENT as select from zrnt_event {
 key event_uuid as EventUuid, rental_uuid as RentalUuid, event_type as EventType, event_date as EventDate, event_time as EventTime,
 location as Location, event_text as EventText, reference_document as ReferenceDocument, created_by as CreatedBy, created_at as CreatedAt,
 last_changed_by as LastChangedBy, last_changed_at as LastChangedAt, local_last_changed_at as LocalLastChangedAt }
