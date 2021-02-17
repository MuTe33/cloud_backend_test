import { CloudTestApi } from '../../system/cloudTestApi';

let paymentsApi = new CloudTestApi('Payments');
paymentsApi.build();
exports.api = paymentsApi.router; 