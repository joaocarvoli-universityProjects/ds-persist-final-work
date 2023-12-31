package br.ufc.work02.service

interface GenericCrudService<T, ID> {
    fun findAll(): List<T>
    fun findById(id: ID): T
    fun create(model: T): T
    fun update(id: ID, model: T): T
    fun delete(id: ID)
}