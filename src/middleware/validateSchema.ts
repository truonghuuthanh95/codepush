import { NextFunction, Request, Response } from 'express';
import { AnySchema } from 'joi';

export const validateBodySchema = (schema: AnySchema) => async (req: Request, res: Response, next: NextFunction) => {
    try {
        await schema.validateAsync(req.body);
        next();
    } catch (error: any) {
        let errorMessage = '';
        for (const err of error.details) {
            errorMessage += ' [ ' + err.path.join(' > ') + err.message.slice(err.message.lastIndexOf('"') + 1) + ' ] ';
        }
        res.status(400).json(errorMessage);
        return;
    }
};

export const validateQueryParamsSchema =
    (schema: AnySchema) => async (req: Request, res: Response, next: NextFunction) => {
        try {
            await schema.validateAsync(req.query);
            next();
        } catch (error) {
            next(error);
        }
    };
