import { CloudTestApi } from '../../system/cloudTestApi';

let productsApi = new CloudTestApi('Products');
productsApi.build();
exports.api = productsApi.router; 