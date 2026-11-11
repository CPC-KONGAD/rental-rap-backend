# Activation order

1. Create/activate persistence tables.
2. Create standalone child interface CDS entities.
3. Create standalone root interface CDS entity.
4. Create minimal managed BDEF and generate `ZBP_I_RNT_RENTAL` via ADT Quick Fix.
5. Add SetDefaults / ValidateDates / Submit / OffRent incrementally.
6. After root behavior works, introduce parent associations/compositions and child behaviors.
7. Create projection CDS and projection BDEF.
8. Add metadata extension.
9. Create service definition `ZRNT_RENTAL_UI`.
10. Create/publish binding `ZRNT_RENTAL_UI_V4` as OData V4 - UI.
