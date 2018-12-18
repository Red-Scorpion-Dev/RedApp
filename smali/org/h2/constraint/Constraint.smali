.class public abstract Lorg/h2/constraint/Constraint;
.super Lorg/h2/schema/SchemaObjectBase;
.source "Constraint.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/h2/schema/SchemaObjectBase;",
        "Ljava/lang/Comparable<",
        "Lorg/h2/constraint/Constraint;",
        ">;"
    }
.end annotation


# static fields
.field public static final CHECK:Ljava/lang/String; = "CHECK"

.field public static final PRIMARY_KEY:Ljava/lang/String; = "PRIMARY KEY"

.field public static final REFERENTIAL:Ljava/lang/String; = "REFERENTIAL"

.field public static final UNIQUE:Ljava/lang/String; = "UNIQUE"


# instance fields
.field protected table:Lorg/h2/table/Table;


# direct methods
.method constructor <init>(Lorg/h2/schema/Schema;ILjava/lang/String;Lorg/h2/table/Table;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Lorg/h2/schema/SchemaObjectBase;-><init>()V

    const/4 v0, 0x1

    .line 53
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/h2/constraint/Constraint;->initSchemaObjectBase(Lorg/h2/schema/Schema;ILjava/lang/String;I)V

    .line 54
    iput-object p4, p0, Lorg/h2/constraint/Constraint;->table:Lorg/h2/table/Table;

    .line 55
    invoke-virtual {p4}, Lorg/h2/table/Table;->isTemporary()Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/h2/constraint/Constraint;->setTemporary(Z)V

    return-void
.end method

.method private getConstraintTypeOrder()I
    .locals 3

    .line 159
    invoke-virtual {p0}, Lorg/h2/constraint/Constraint;->getConstraintType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHECK"

    .line 160
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v1, "PRIMARY KEY"

    .line 162
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const-string v1, "UNIQUE"

    .line 164
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    return v0

    :cond_2
    const-string v1, "REFERENTIAL"

    .line 166
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x3

    return v0

    .line 169
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public abstract checkExistingData(Lorg/h2/engine/Session;)V
.end method

.method public checkRename()V
    .locals 0

    return-void
.end method

.method public abstract checkRow(Lorg/h2/engine/Session;Lorg/h2/table/Table;Lorg/h2/result/Row;Lorg/h2/result/Row;)V
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 24
    check-cast p1, Lorg/h2/constraint/Constraint;

    invoke-virtual {p0, p1}, Lorg/h2/constraint/Constraint;->compareTo(Lorg/h2/constraint/Constraint;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/h2/constraint/Constraint;)I
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 178
    :cond_0
    invoke-direct {p0}, Lorg/h2/constraint/Constraint;->getConstraintTypeOrder()I

    move-result v0

    .line 179
    invoke-direct {p1}, Lorg/h2/constraint/Constraint;->getConstraintTypeOrder()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public abstract getConstraintType()Ljava/lang/String;
.end method

.method public abstract getCreateSQLWithoutIndexes()Ljava/lang/String;
.end method

.method public getDropSQL()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRefTable()Lorg/h2/table/Table;
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/h2/constraint/Constraint;->table:Lorg/h2/table/Table;

    return-object v0
.end method

.method public abstract getReferencedColumns(Lorg/h2/table/Table;)Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/table/Table;",
            ")",
            "Ljava/util/HashSet<",
            "Lorg/h2/table/Column;",
            ">;"
        }
    .end annotation
.end method

.method public getTable()Lorg/h2/table/Table;
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/h2/constraint/Constraint;->table:Lorg/h2/table/Table;

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public abstract getUniqueIndex()Lorg/h2/index/Index;
.end method

.method public abstract isBefore()Z
.end method

.method public isEverything(Lorg/h2/expression/ExpressionVisitor;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isHidden()Z
    .locals 1

    .line 185
    iget-object v0, p0, Lorg/h2/constraint/Constraint;->table:Lorg/h2/table/Table;

    invoke-virtual {v0}, Lorg/h2/table/Table;->isHidden()Z

    move-result v0

    return v0
.end method

.method public abstract rebuild()V
.end method

.method public abstract setIndexOwner(Lorg/h2/index/Index;)V
.end method

.method public abstract usesIndex(Lorg/h2/index/Index;)Z
.end method
