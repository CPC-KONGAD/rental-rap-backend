# Rental Equipment Management - RAP Backend

Source repository for the S/4HANA Rental Equipment Management RAP backend.

## Important
This repository contains activation-oriented RAP sources plus a manifest. It is GitHub-ready, but the raw `*.asddls/*.asbdef/*.asdsv` files are **not claimed to be native abapGit serialized repository objects**. abapGit requires object-specific serialization metadata. Create/paste these sources in ADT, or serialize them from a compatible S/4 source system before using abapGit pull/deserialization.

## Package
`ZRNT_RENTAL`

## Model
- Persistence: ZRNT_HDR, ZRNT_ITEM, ZRNT_EQUIP, ZRNT_EXT, ZRNT_EVENT, ZRNT_INVEXC
- Interface: ZI_RNT_RENTAL + child entities
- Behavior: ZI_RNT_RENTAL / ZBP_I_RNT_RENTAL
- Projection: ZC_RNT_RENTAL + children
- Service: ZRNT_RENTAL_UI
- Binding to create in ADT: ZRNT_RENTAL_UI_V4, OData V4 - UI

Follow `docs/ACTIVATION_ORDER.md`.
