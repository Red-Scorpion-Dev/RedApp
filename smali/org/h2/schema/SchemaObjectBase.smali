.class public abstract Lorg/h2/schema/SchemaObjectBase;
.super Lorg/h2/engine/DbObjectBase;
.source "SchemaObjectBase.java"

# interfaces
.implements Lorg/h2/schema/SchemaObject;


# instance fields
.field private schema:Lorg/h2/schema/Schema;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lorg/h2/engine/DbObjectBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getSQL()Ljava/lang/String;
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/schema/SchemaObjectBase;->schema:Lorg/h2/schema/Schema;

    invoke-virtual {v1}, Lorg/h2/schema/Schema;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lorg/h2/engine/DbObjectBase;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSchema()Lorg/h2/schema/Schema;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/h2/schema/SchemaObjectBase;->schema:Lorg/h2/schema/Schema;

    return-object v0
.end method

.method protected initSchemaObjectBase(Lorg/h2/schema/Schema;ILjava/lang/String;I)V
    .locals 1

    .line 28
    invoke-virtual {p1}, Lorg/h2/schema/Schema;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/h2/schema/SchemaObjectBase;->initDbObjectBase(Lorg/h2/engine/Database;ILjava/lang/String;I)V

    .line 29
    iput-object p1, p0, Lorg/h2/schema/SchemaObjectBase;->schema:Lorg/h2/schema/Schema;

    return-void
.end method

.method public isHidden()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
