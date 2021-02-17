import { CloudTestApi } from '../../system/cloudTestApi';

let ordersApi = new CloudTestApi('Orders');
ordersApi.build();
exports.api = ordersApi.router; 