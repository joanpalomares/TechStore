using techStore from '../db/schema';

service TechStoreService {
  entity Products  as projection on techStore.Products;
  entity Customers as projection on techStore.Customers;
  entity Orders    as projection on techStore.Orders;
}
