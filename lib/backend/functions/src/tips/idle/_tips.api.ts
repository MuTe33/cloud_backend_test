import { CloudTestApi } from '../../system/cloudTestApi';

let tipsApi = new CloudTestApi('Tips');
tipsApi.build();
exports.api = tipsApi.router; 