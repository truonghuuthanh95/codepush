import { DataTypes, Model, Optional } from 'sequelize';
import db from './db';
import User from './user';

interface InteractionAttributes {
    id: Number;
    userId: string;
    interactToUser: string;
    isLike: boolean;
}

export type InteractionInput = Optional<InteractionAttributes, 'id'>;
export type InteractionOutput = Required<InteractionAttributes>;

class Interaction extends Model<InteractionAttributes, InteractionInput> implements InteractionOutput {
    id!: number;
    userId!: string;
    interactToUser!: string;
    isLike!: boolean;
}

Interaction.init(
    {
        id: {
            type: DataTypes.INTEGER.UNSIGNED,
            autoIncrement: true,
            primaryKey: true,
        },
        userId: DataTypes.STRING,
        interactToUser: DataTypes.STRING,
        isLike: DataTypes.BOOLEAN,
    },
    {
        sequelize: db,
        timestamps: true,
        tableName: 'interactions',
    }
);

Interaction.belongsTo(User, { foreignKey: 'interactToUser' });

export default Interaction;
