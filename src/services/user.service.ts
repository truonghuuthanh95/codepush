import User from '../models/user';
import Interaction from '../models/interaction';
import { Op, Sequelize } from 'sequelize';

export const getUsers = async (userId: string | undefined, limit: number = 100, offset: number = 0) => {
    try {
        const interactions = await Interaction.findAll({
            where: {
                userId,
            },
        });
        const viewedUsers = interactions.map((interaction) => interaction.interactToUser);
        const users = await User.findAll({
            where: {
                id: { [Op.notIn]: viewedUsers },
            },
            limit,
            offset,
        });
        return users;
    } catch (error) {
        throw error;
    }
};

export const getUserById = async (userId: string | undefined) => {
    try {
        const user = await User.findByPk(userId);
        return user;
    } catch (error) {
        throw error;
    }
};

export const getRandomUser = async () => {
    try {
        const user = await User.findAll({
            limit: 1,
            order: Sequelize.literal('rand()'),
        });

        return user.shift();
    } catch (error) {
        throw error;
    }
};

export const getInteractionsByUserId = async (userId: string | undefined, isLike: boolean | undefined) => {
    try {
        let users;
        if (isLike !== undefined) {
            users = await Interaction.findAll({
                include: [{ model: User }],
                where: {
                    userId,
                    isLike: isLike,
                },
            });
        } else {
            users = await Interaction.findAll({
                include: [{ model: User }],
                where: {
                    userId,
                },
            });
        }

        return users;
    } catch (error) {
        throw error;
    }
};

export const getMatchedByUserId = async (userId: string | undefined) => {
    try {
        const users = await Interaction.findAll({
            where: {
                userId,
            },
        });
        return users;
    } catch (error) {
        throw error;
    }
};

export const createInteraction = async (interaction: any) => {
    try {
        const created = await Interaction.create(interaction);
        return created;
    } catch (error) {
        throw error;
    }
};
