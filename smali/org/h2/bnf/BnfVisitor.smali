.class public interface abstract Lorg/h2/bnf/BnfVisitor;
.super Ljava/lang/Object;
.source "BnfVisitor.java"


# virtual methods
.method public abstract visitRuleElement(ZLjava/lang/String;Lorg/h2/bnf/Rule;)V
.end method

.method public abstract visitRuleFixed(I)V
.end method

.method public abstract visitRuleList(ZLjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Lorg/h2/bnf/Rule;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract visitRuleOptional(Lorg/h2/bnf/Rule;)V
.end method

.method public abstract visitRuleRepeat(ZLorg/h2/bnf/Rule;)V
.end method
