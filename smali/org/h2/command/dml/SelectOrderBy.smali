.class public Lorg/h2/command/dml/SelectOrderBy;
.super Ljava/lang/Object;
.source "SelectOrderBy.java"


# instance fields
.field public columnIndexExpr:Lorg/h2/expression/Expression;

.field public descending:Z

.field public expression:Lorg/h2/expression/Expression;

.field public nullsFirst:Z

.field public nullsLast:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSQL()Ljava/lang/String;
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    iget-object v1, p0, Lorg/h2/command/dml/SelectOrderBy;->expression:Lorg/h2/expression/Expression;

    if-eqz v1, :cond_0

    const/16 v1, 0x3d

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/command/dml/SelectOrderBy;->expression:Lorg/h2/expression/Expression;

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 47
    :cond_0
    iget-object v1, p0, Lorg/h2/command/dml/SelectOrderBy;->columnIndexExpr:Lorg/h2/expression/Expression;

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    :goto_0
    iget-boolean v1, p0, Lorg/h2/command/dml/SelectOrderBy;->descending:Z

    if-eqz v1, :cond_1

    const-string v1, " DESC"

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    :cond_1
    iget-boolean v1, p0, Lorg/h2/command/dml/SelectOrderBy;->nullsFirst:Z

    if-eqz v1, :cond_2

    const-string v1, " NULLS FIRST"

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 54
    :cond_2
    iget-boolean v1, p0, Lorg/h2/command/dml/SelectOrderBy;->nullsLast:Z

    if-eqz v1, :cond_3

    const-string v1, " NULLS LAST"

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
