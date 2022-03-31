import { Router } from 'express';
import {
    user_createLike,
    user_createPass,
    user_getInteraction,
    user_getUser,
    user_getUsers,
} from '../controllers/user.controller';
import auth from '../middleware/auth';
import { validateBodySchema } from '../middleware/validateSchema';
import { interactionSchema } from '../utils/schema/userSchema';

const route = Router();

route.get('/', user_getUser);

route.get('/list', user_getUsers);

route.get('/interaction', auth, user_getInteraction);

route.post('/like', auth, validateBodySchema(interactionSchema), user_createLike);

route.post('/pass', auth, validateBodySchema(interactionSchema), user_createPass);

export default route;
