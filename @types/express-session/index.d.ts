import User from '../../src/models/user';
declare module 'express-session' {
    interface Session {
        user?: User;
    }
}
