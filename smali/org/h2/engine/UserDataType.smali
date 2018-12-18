.class public Lorg/h2/engine/UserDataType;
.super Lorg/h2/engine/DbObjectBase;
.source "UserDataType.java"


# instance fields
.field private column:Lorg/h2/table/Column;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Database;ILjava/lang/String;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Lorg/h2/engine/DbObjectBase;-><init>()V

    const/4 v0, 0x2

    .line 21
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/h2/engine/UserDataType;->initDbObjectBase(Lorg/h2/engine/Database;ILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public checkRename()V
    .locals 0

    return-void
.end method

.method public getColumn()Lorg/h2/table/Column;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/h2/engine/UserDataType;->column:Lorg/h2/table/Column;

    return-object v0
.end method

.method public getCreateSQL()Ljava/lang/String;
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE DOMAIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/h2/engine/UserDataType;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/engine/UserDataType;->column:Lorg/h2/table/Column;

    invoke-virtual {v1}, Lorg/h2/table/Column;->getCreateSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreateSQLForCopy(Lorg/h2/table/Table;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 26
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getDropSQL()Ljava/lang/String;
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP DOMAIN IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/h2/engine/UserDataType;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public removeChildrenAndResources(Lorg/h2/engine/Session;)V
    .locals 2

    .line 50
    iget-object v0, p0, Lorg/h2/engine/UserDataType;->database:Lorg/h2/engine/Database;

    invoke-virtual {p0}, Lorg/h2/engine/UserDataType;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/h2/engine/Database;->removeMeta(Lorg/h2/engine/Session;I)V

    return-void
.end method

.method public setColumn(Lorg/h2/table/Column;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lorg/h2/engine/UserDataType;->column:Lorg/h2/table/Column;

    return-void
.end method
