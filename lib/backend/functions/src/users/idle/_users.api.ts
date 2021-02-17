import { CloudTestApi } from '../../system/cloudTestApi';

let usersApi = new CloudTestApi('Users');
usersApi.build();
exports.api = usersApi.router; 