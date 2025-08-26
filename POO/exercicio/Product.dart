import "dart:io";

class Product{
    String name = "";
    double price = 0;
    int stock = 0;

    Product(this.name, this.price, this.stock);

    void subtrair_estoque(){
        if(stock >= 1){
            stock--; //subtrai um igual -= 1
            print("Stock decreased by 1");
            return;
        }
        print("No stock to ${name}");
    }
}

void main(){
    Product bread = Product("Bread", 20 , 8);
    bread.subtrair_estoque();
}