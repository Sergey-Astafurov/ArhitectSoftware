interface Product {
  GetName(): string;
}
class ConcreteProductA implements Product{
   public GetName(): string {
      return 'Product A'
  }
}
class ConcreteProductB implements Product{
  public GetName(): string {
      return 'Product B'
  }
}
interface Creator{
  FactoryMethod() : Product
}
class ConcreteCreatorA implements Creator{
  public FactoryMethod(): Product {
      return new ConcreteProductA();
  }
}
class ConcreteCreatorB implements Creator{
  public FactoryMethod(): Product {
      return new ConcreteProductB()
  }
}

const creators: Creator[] = [new ConcreteCreatorA(), new ConcreteCreatorB()]
const products: string[] = []

for (let creator of creators){
  products.push(creator.FactoryMethod().GetName())
}
console.log(products);