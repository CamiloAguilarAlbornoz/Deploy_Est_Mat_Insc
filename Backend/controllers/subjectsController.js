"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.subjectsController = void 0;
const database_1 = __importDefault(require("../database"));
const registerPetitions = __importDefault(require("./registerPetitionsControll"));
class SubjectsController {
    list(req, res) {
        const materias = database_1.default.query('select * from MATERIAS', (err, results, fields) => {
            if (err) {
                res.status(400).json({
                    status: 'error 400',
                    message: err.message
                });
                registerPetitions.create('error 400 '.concat(err.message), 'Captado en el servidor 1');
            }
            else if (!results) {
                res.status(204).json({
                    status: '204',
                    result: 'No se encontró ningun registro que coincida con los parametros dados'
                });
                registerPetitions.create('204, No se encontró ningun registro que coincida con los parametros dados', 'Captado en el servidor 1');
            }
            else {
                res.status(200).json({
                    status: '200',
                    result: results
                });
                registerPetitions.create('OK 200', 'Captado en el servidor 1');
            }
        });
    }
    getId(req, res) {
        const materias = database_1.default.query('select * from MATERIAS where id_materia = ?', req.params.id, (err, results, fields) => {
            if (err) {
                res.status(400).json({
                    status: 'error 400',
                    message: err.message
                });
                registerPetitions.create('error 400 '.concat(err.message), 'Captado en el servidor 1');
            }
            else if (!results) {
                res.status(204).json({
                    status: '204',
                    result: 'No se encontró ningun registro que coincida con los parametros dados'
                });
                registerPetitions.create('204, No se encontró ningun registro que coincida con los parametros dados', 'Captado en el servidor 1');
            }
            else {
                res.status(200).json({
                    status: '200',
                    result: results
                });
                registerPetitions.create('OK 200', 'Captado en el servidor 1');
            }
        });
    }
    create(req, res) {
        database_1.default.query('INSERT INTO MATERIAS set ?', [req.body], (err, results, fields) => {
            if (err) {
                res.status(400).json({
                    status: 'error 400',
                    message: err.message
                });
                registerPetitions.create('error 400 '.concat(err.message), 'Captado en el servidor 1');
            }
            else if (!results) {
                res.status(204).json({
                    status: '204',
                    result: 'No se encontró ningun registro que coincida con los parametros dados'
                });
                registerPetitions.create('204, No se encontró ningun registro que coincida con los parametros dados', 'Captado en el servidor 1');
            }
            else {
                res.status(200).json({
                    status: '200',
                    result: results
                });
                registerPetitions.create('OK 200', 'Captado en el servidor 1');
            }
        });
        res.json({ text: 'Se guardo una materia' });
    }
    delete(req, res) {
        res.json({ text: 'Eliminado una materia ' + req.params.id });
    }
    update(req, res) {
        const { id } = req.params;
        database_1.default.query('UPDATE MATERIAS set ? WHERE id_materia = ?', [req.body, id], (err, results, fields) => {
            if (err) {
                res.status(400).json({
                    status: 'error 400',
                    message: err.message
                });
                registerPetitions.create('error 400 '.concat(err.message), 'Captado en el servidor 1');
            }
            else if (!results) {
                res.status(204).json({
                    status: '204',
                    result: 'No se encontró ningun registro que coincida con los parametros dados'
                });
                registerPetitions.create('204, No se encontró ningun registro que coincida con los parametros dados', 'Captado en el servidor 1');
            }
            else {
                res.status(200).json({
                    status: '200',
                    result: results
                });
                registerPetitions.create('OK 200', 'Captado en el servidor 1');
            }
        });
        res.json({ text: 'actualizando una materia ' + req.params.id });
    }
    patch(req, res) {
        const { id } = req.params;
        database_1.default.query('UPDATE MATERIAS set estado = ? WHERE id_materia = ?', [req.body.estado, id], (err, results, fields) => {
            if (err) {
                res.status(400).json({
                    status: 'error 400',
                    message: err.message
                });
                registerPetitions.create('error 400 '.concat(err.message), 'Captado en el servidor 1');
            }
            else if (!results) {
                res.status(204).json({
                    status: '204',
                    result: 'No se encontró ningun registro que coincida con los parametros dados'
                });
                registerPetitions.create('204, No se encontró ningun registro que coincida con los parametros dados', 'Captado en el servidor 1');
            }
            else {
                res.status(200).json({
                    status: '200',
                    result: results
                });
                registerPetitions.create('OK 200', 'Captado en el servidor 1');
            }
        });
        res.json({ text: 'actualizando cambiado el estado de una materia ' + req.params.id });
    }
}
exports.subjectsController = new SubjectsController();
