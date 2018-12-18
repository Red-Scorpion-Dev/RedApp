.class abstract Lorg/h2/expression/Condition;
.super Lorg/h2/expression/Expression;
.source "Condition.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lorg/h2/expression/Expression;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisplaySize()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getPrecision()J
    .locals 2

    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public getScale()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
