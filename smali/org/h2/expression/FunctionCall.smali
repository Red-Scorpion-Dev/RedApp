.class public interface abstract Lorg/h2/expression/FunctionCall;
.super Ljava/lang/Object;
.source "FunctionCall.java"


# virtual methods
.method public abstract getArgs()[Lorg/h2/expression/Expression;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getSQL()Ljava/lang/String;
.end method

.method public abstract getType()I
.end method

.method public abstract getValueForColumnList(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;)Lorg/h2/value/ValueResultSet;
.end method

.method public abstract isBufferResultSetToLocalTemp()Z
.end method

.method public abstract isDeterministic()Z
.end method

.method public abstract optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;
.end method
