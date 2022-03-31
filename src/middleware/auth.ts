import { Request, Response, NextFunction } from 'express';
export const auth = async (req: Request, res: Response, next: NextFunction): Promise<Response | void> => {
    try {
        if (!req.session.user) {
            res.status(401).send({ error: 'Not authorized to access this resource' });
            return;
        }
        next();
    } catch (error) {
        next(error);
    }
};

export default auth;
