import com.tinkerpop.blueprints.Graph
import com.tinkerpop.gremlin.groovy.Gremlin
import com.tinkerpop.blueprints.impls.tg.TinkerGraphFactory

class HelloGremlin { 
  static {
    Gremlin.load()
  }
  public static List exampleMethod() {
    Graph g = TinkerGraphFactory.createTinkerGraph()
    def results = []
    g.v(1).out('knows').fill(results)
    return results
  }

  public static void main(String[] args) {
    List results = HelloGremlin.exampleMethod()
    results.each {
      System.out.println(it)
    }
  }
}
