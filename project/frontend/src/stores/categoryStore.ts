import {defineStore} from "pinia";
import {Manufacturer} from "../model/manufacturer.ts";
import {api} from "../baseConfig.ts";
import {mapToCategory, mapToProduct} from "../model/mappers.ts";
import {Category} from "../model/category.ts";

export const useCategoryStore = defineStore('Category', () => {
    async function getAllCategories(): Promise<Category[]> {
        let categories : Manufacturer[] = []
        try {
            const { data } = await api.get("/product-category")
            categories = Object.values(data).map((category : any) => mapToCategory(category))
            return categories
        } catch (error){
            return categories
        }
    }

    async function getAllByName(field: String, name: String): Promise<Category[]> {
        let categories : Category[] = []
        try {
            const { data } = await api.get(`/product-category/name?field=${field}&name=${name}`)
            categories = Object.values(data).map((product : any) => mapToCategory(product))
            return categories
        } catch (error){
            return categories
        }
    }

    async function orderByField(field: String, direction: String){
        let categories : Category[] = []
        try {
            const { data } = await api.get(`/product-category/order?field=${field}&direction=${direction}`)
            categories = Object.values(data).map((product : any) => mapToProduct(product))
            return categories
        } catch (error){
            return categories
        }
    }

    async function createCategory(category: Category): Promise<RequestFeedback> {
        let requestFeedback : RequestFeedback = {
            success : false,
            message : ""
        }

        try {
            const {status } = await api.post(`/product-category`, {
                name: category.name
            })
            requestFeedback.success = status == 200;

            return requestFeedback
        } catch (e) {
            requestFeedback.success = false
            return requestFeedback
        }
    }

    async function editCategoryById(category: Category): Promise<RequestFeedback> {
        let requestFeedback : RequestFeedback = {
            success : false,
            message : ""
        }

        try {
            const {status } = await api.put(`/product-category/${category.id}`, {
                name: category.name
            })
            requestFeedback.success = status == 200;

            return requestFeedback
        } catch (e) {
            requestFeedback.success = false
            return requestFeedback
        }
    }

    async function removeCategoryById(categoryId: number): Promise<RequestFeedback> {
        let requestFeedback : RequestFeedback = {
            success : false,
            message : ""
        }
        try {
            const {status } = await api.delete(`/product-category/${categoryId}`)
            requestFeedback.success = status == 200;

            return requestFeedback
        } catch (e) {
            requestFeedback.success = false
            return requestFeedback
        }
    }

    return {
        createCategory, getAllCategories, editCategoryById,
        removeCategoryById, orderByField, getAllByName }
})