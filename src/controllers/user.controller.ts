import { Request, Response, NextFunction } from 'express';
import {
    getRandomUser,
    getUserById,
    getUsers,
    getInteractionsByUserId,
    getMatchedByUserId,
    createInteraction,
} from '../services/user.service';

export const user_getUsers = async (req: Request, res: Response, next: NextFunction): Promise<Response | void> => {
    try {
        if (!req.session.user) {
            const user = await getRandomUser();
            req.session.user = user;
        }

        const limit = req.query.limit ? parseInt(req.query.limit as any) : undefined;
        const offset = req.query.offset ? parseInt(req.query.offset as any) : undefined;

        const users = await getUsers(req.session.user?.id, limit, offset);

        return res.status(200).send({ statusCode: 200, message: 'success', results: users });
    } catch (error) {
        next(error);
    }
};

export const user_getUser = async (req: Request, res: Response, next: NextFunction): Promise<Response | void> => {
    try {
        const id = req.query.id as string;
        const user = await getUserById(id);
        return res.status(200).send({ statusCode: 200, message: 'success', results: user });
    } catch (error) {
        next(error);
    }
};

export const user_getInteraction = async (
    req: Request,
    res: Response,
    next: NextFunction
): Promise<Response | void> => {
    try {
        const { type } = req.query;
        let users;
        if (type === 'like') {
            users = await getInteractionsByUserId(req.session.user?.id, true);
        } else {
            users = await getInteractionsByUserId(req.session.user?.id, false);
        }
        return res.status(200).send({ statusCode: 200, message: 'success', results: users });
    } catch (error) {
        next(error);
    }
};

export const user_getMatched = async (req: Request, res: Response, next: NextFunction): Promise<Response | void> => {
    try {
        const users = await getMatchedByUserId(req.session.user?.id);
        return res.status(200).send({ statusCode: 200, message: 'success', results: users });
    } catch (error) {
        next(error);
    }
};

export const user_createLike = async (req: Request, res: Response, next: NextFunction): Promise<Response | void> => {
    try {
        const { userId } = req.body;

        const users = await createInteraction({
            userId: req.session.user?.id,
            interactToUser: userId,
            isLike: true,
        });
        return res.status(200).send({ statusCode: 200, message: 'success', results: users });
    } catch (error) {
        next(error);
    }
};

export const user_createPass = async (req: Request, res: Response, next: NextFunction): Promise<Response | void> => {
    try {
        const { userId } = req.body;
        const users = await createInteraction({
            userId: req.session.user?.id,
            interactToUser: userId,
            isLike: false,
        });
        return res.status(200).send({ statusCode: 200, message: 'success', results: users });
    } catch (error) {
        next(error);
    }
};
