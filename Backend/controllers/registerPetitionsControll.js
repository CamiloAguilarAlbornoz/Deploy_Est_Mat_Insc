"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.registerPetitionsController = void 0;
const database_1 = __importDefault(require("../database"));
class RegisterPetitionsController {

    create(estado, descripcion) {
        database_1.default.query(`INSERT INTO REGISTROS_PETICIONES (fecha_registro, estado, descripcion) VALUES (NOW(), ${estado}, ${descripcion})`);
    }
}