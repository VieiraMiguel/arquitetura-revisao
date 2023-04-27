import { ProductDatabase } from "../database/ProductDatabase";

export class ProductBusiness {

    constructor(
        private productDatabase: ProductDatabase
    ) { }

    public async getProducts(q: string | undefined) {

        let productsDB

        if (q) {

            productsDB = await this.productDatabase.getProductByName(q)

        } else { }

        return productsDB
    } 
}