public abstract class Expr<T> { 
 
    public interface Evaluator<T> { boolean evaluate(T value); } 
    public abstract boolean eval(Evaluator<T> evaluator); 
 
    public class True<T> extends Expr<T> { 
	public boolean eval(Evaluator<T> evaluator) { return true; } 
    } 

    public class False<T> extends Expr<T> { 
	public boolean eval(Evaluator<T> evaluator) { return false; } 
    } 

    public class Base<T> extends Expr<T> { 
	public final T value; 
	public Base(T value) { this.value = value; } 
	public boolean eval(Evaluator<T> evaluator) 
	{ return evaluator.evaluate(value); } 
    } 

    public class And<T> extends Expr<T> { 
	public final Expr<T> expr1; 
	public final Expr<T> expr2; 
	public And(Expr<T> expr1, Expr<T> expr2)  { 
	    this.expr1 = expr1; 
	    this.expr2 = expr2; 
	} 
	public boolean eval(Evaluator<T> evaluator) { 
	    return expr1.eval(evaluator) && expr2.eval(evaluator); 
	} 
    } 

    public class Or<T> extends Expr<T> { 
	public final Expr<T> expr1; 
	public final Expr<T> expr2; 
	public Or(Expr<T> expr1, Expr<T> expr2)  { 
	    this.expr1 = expr1; 
	    this.expr2 = expr2; 
	} 
	public boolean eval(Evaluator<T> evaluator) { 
	    return expr1.eval(evaluator) || expr2.eval(evaluator); 
	} 
    } 

    public class If<T> extends Expr<T> { 
	public final Expr<T> cond; 
	public final Expr<T> then_; 
	public final Expr<T> else_; 
	public If(Expr<T> cond, Expr<T> then_, Expr<T> else_)  { 
	    this.cond = cond; 
	    this.then_ = then_; 
	    this.else_ = else_; 
	} 
	public boolean eval(Evaluator<T> evaluator) { 
	    if (cond.eval(evaluator)) { return then_.eval(evaluator); }
	    else { return else_.eval(evaluator); }
	}
    } 

    public class Not<T> extends Expr<T> { 
	public final Expr<T> expr; 
	public Not(Expr<T> expr) { this.expr = expr; } 
	public boolean eval(Evaluator<T> evaluator) 
	{ return !expr.eval(evaluator); } 
    } 
} 
