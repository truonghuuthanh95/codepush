import Joi from 'joi';

export const interactionSchema = Joi.object({
    userId: Joi.string().required(),
});
