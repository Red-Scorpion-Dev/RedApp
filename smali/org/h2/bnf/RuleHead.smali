.class public Lorg/h2/bnf/RuleHead;
.super Ljava/lang/Object;
.source "RuleHead.java"


# instance fields
.field private rule:Lorg/h2/bnf/Rule;

.field private final section:Ljava/lang/String;

.field private final topic:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/h2/bnf/Rule;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/h2/bnf/RuleHead;->section:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lorg/h2/bnf/RuleHead;->topic:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lorg/h2/bnf/RuleHead;->rule:Lorg/h2/bnf/Rule;

    return-void
.end method


# virtual methods
.method public getRule()Lorg/h2/bnf/Rule;
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/h2/bnf/RuleHead;->rule:Lorg/h2/bnf/Rule;

    return-object v0
.end method

.method public getSection()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/h2/bnf/RuleHead;->section:Ljava/lang/String;

    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/h2/bnf/RuleHead;->topic:Ljava/lang/String;

    return-object v0
.end method

.method setRule(Lorg/h2/bnf/Rule;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lorg/h2/bnf/RuleHead;->rule:Lorg/h2/bnf/Rule;

    return-void
.end method
