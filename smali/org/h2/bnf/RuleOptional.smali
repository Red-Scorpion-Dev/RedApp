.class public Lorg/h2/bnf/RuleOptional;
.super Ljava/lang/Object;
.source "RuleOptional.java"

# interfaces
.implements Lorg/h2/bnf/Rule;


# instance fields
.field private mapSet:Z

.field private final rule:Lorg/h2/bnf/Rule;


# direct methods
.method public constructor <init>(Lorg/h2/bnf/Rule;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/h2/bnf/RuleOptional;->rule:Lorg/h2/bnf/Rule;

    return-void
.end method


# virtual methods
.method public accept(Lorg/h2/bnf/BnfVisitor;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/h2/bnf/RuleOptional;->rule:Lorg/h2/bnf/Rule;

    invoke-interface {p1, v0}, Lorg/h2/bnf/BnfVisitor;->visitRuleOptional(Lorg/h2/bnf/Rule;)V

    return-void
.end method

.method public autoComplete(Lorg/h2/bnf/Sentence;)Z
    .locals 1

    .line 35
    invoke-virtual {p1}, Lorg/h2/bnf/Sentence;->stopIfRequired()V

    .line 36
    iget-object v0, p0, Lorg/h2/bnf/RuleOptional;->rule:Lorg/h2/bnf/Rule;

    invoke-interface {v0, p1}, Lorg/h2/bnf/Rule;->autoComplete(Lorg/h2/bnf/Sentence;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public setLinks(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/bnf/RuleHead;",
            ">;)V"
        }
    .end annotation

    .line 28
    iget-boolean v0, p0, Lorg/h2/bnf/RuleOptional;->mapSet:Z

    if-nez v0, :cond_0

    .line 29
    iget-object v0, p0, Lorg/h2/bnf/RuleOptional;->rule:Lorg/h2/bnf/Rule;

    invoke-interface {v0, p1}, Lorg/h2/bnf/Rule;->setLinks(Ljava/util/HashMap;)V

    const/4 p1, 0x1

    .line 30
    iput-boolean p1, p0, Lorg/h2/bnf/RuleOptional;->mapSet:Z

    :cond_0
    return-void
.end method
