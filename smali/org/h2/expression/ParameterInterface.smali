.class public interface abstract Lorg/h2/expression/ParameterInterface;
.super Ljava/lang/Object;
.source "ParameterInterface.java"


# virtual methods
.method public abstract checkSet()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/h2/message/DbException;
        }
    .end annotation
.end method

.method public abstract getNullable()I
.end method

.method public abstract getParamValue()Lorg/h2/value/Value;
.end method

.method public abstract getPrecision()J
.end method

.method public abstract getScale()I
.end method

.method public abstract getType()I
.end method

.method public abstract isValueSet()Z
.end method

.method public abstract setValue(Lorg/h2/value/Value;Z)V
.end method
