// Generated from /Users/wei/IdeaProjects/Autonomous Vehicles/Scenario/src/main/java/Demo.g4 by ANTLR 4.9.2
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link DemoParser}.
 */
public interface DemoListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link DemoParser#prog}.
	 * @param ctx the parse tree
	 */
	void enterProg(DemoParser.ProgContext ctx);
	/**
	 * Exit a parse tree produced by {@link DemoParser#prog}.
	 * @param ctx the parse tree
	 */
	void exitProg(DemoParser.ProgContext ctx);
	/**
	 * Enter a parse tree produced by {@link DemoParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExpr(DemoParser.ExprContext ctx);
	/**
	 * Exit a parse tree produced by {@link DemoParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExpr(DemoParser.ExprContext ctx);
}