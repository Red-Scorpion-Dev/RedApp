.class public interface abstract Lorg/h2/bnf/Rule;
.super Ljava/lang/Object;
.source "Rule.java"


# virtual methods
.method public abstract accept(Lorg/h2/bnf/BnfVisitor;)V
.end method

.method public abstract autoComplete(Lorg/h2/bnf/Sentence;)Z
.end method

.method public abstract setLinks(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/bnf/RuleHead;",
            ">;)V"
        }
    .end annotation
.end method
