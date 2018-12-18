.class public Lorg/h2/bnf/RuleRepeat;
.super Ljava/lang/Object;
.source "RuleRepeat.java"

# interfaces
.implements Lorg/h2/bnf/Rule;


# instance fields
.field private final comma:Z

.field private final rule:Lorg/h2/bnf/Rule;


# direct methods
.method public constructor <init>(Lorg/h2/bnf/Rule;Z)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/h2/bnf/RuleRepeat;->rule:Lorg/h2/bnf/Rule;

    .line 20
    iput-boolean p2, p0, Lorg/h2/bnf/RuleRepeat;->comma:Z

    return-void
.end method


# virtual methods
.method public accept(Lorg/h2/bnf/BnfVisitor;)V
    .locals 2

    .line 25
    iget-boolean v0, p0, Lorg/h2/bnf/RuleRepeat;->comma:Z

    iget-object v1, p0, Lorg/h2/bnf/RuleRepeat;->rule:Lorg/h2/bnf/Rule;

    invoke-interface {p1, v0, v1}, Lorg/h2/bnf/BnfVisitor;->visitRuleRepeat(ZLorg/h2/bnf/Rule;)V

    return-void
.end method

.method public autoComplete(Lorg/h2/bnf/Sentence;)Z
    .locals 3

    .line 35
    invoke-virtual {p1}, Lorg/h2/bnf/Sentence;->stopIfRequired()V

    .line 36
    :goto_0
    iget-object v0, p0, Lorg/h2/bnf/RuleRepeat;->rule:Lorg/h2/bnf/Rule;

    invoke-interface {v0, p1}, Lorg/h2/bnf/Rule;->autoComplete(Lorg/h2/bnf/Sentence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p1}, Lorg/h2/bnf/Sentence;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 40
    :goto_1
    invoke-static {v0}, Lorg/h2/bnf/Bnf;->startWithSpace(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 43
    :cond_1
    invoke-virtual {p1, v0}, Lorg/h2/bnf/Sentence;->setQuery(Ljava/lang/String;)V

    return v2
.end method

.method public setLinks(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/bnf/RuleHead;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
