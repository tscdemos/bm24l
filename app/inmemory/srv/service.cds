using { vegetableStore } from '../db/schema.cds';

service vegetableStoreSrv {
  entity Salad as projection on vegetableStore.Salad;
  entity Warehouse as projection on vegetableStore.Warehouse;
  entity Discount as projection on vegetableStore.Discount;
}