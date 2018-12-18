.class public Lorg/h2/engine/Setting;
.super Lorg/h2/engine/DbObjectBase;
.source "Setting.java"


# instance fields
.field private intValue:I

.field private stringValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Database;ILjava/lang/String;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Lorg/h2/engine/DbObjectBase;-><init>()V

    const/16 v0, 0xa

    .line 21
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/h2/engine/Setting;->initDbObjectBase(Lorg/h2/engine/Database;ILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public checkRename()V
    .locals 1

    const-string v0, "RENAME"

    .line 75
    invoke-static {v0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public getCreateSQL()Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SET "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lorg/h2/engine/Setting;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    iget-object v1, p0, Lorg/h2/engine/Setting;->stringValue:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lorg/h2/engine/Setting;->stringValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 57
    :cond_0
    iget v1, p0, Lorg/h2/engine/Setting;->intValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreateSQLForCopy(Lorg/h2/table/Table;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 42
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getDropSQL()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntValue()I
    .locals 1

    .line 29
    iget v0, p0, Lorg/h2/engine/Setting;->intValue:I

    return v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/h2/engine/Setting;->stringValue:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public removeChildrenAndResources(Lorg/h2/engine/Session;)V
    .locals 2

    .line 69
    iget-object v0, p0, Lorg/h2/engine/Setting;->database:Lorg/h2/engine/Database;

    invoke-virtual {p0}, Lorg/h2/engine/Setting;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/h2/engine/Database;->removeMeta(Lorg/h2/engine/Session;I)V

    .line 70
    invoke-virtual {p0}, Lorg/h2/engine/Setting;->invalidate()V

    return-void
.end method

.method public setIntValue(I)V
    .locals 0

    .line 25
    iput p1, p0, Lorg/h2/engine/Setting;->intValue:I

    return-void
.end method

.method public setStringValue(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lorg/h2/engine/Setting;->stringValue:Ljava/lang/String;

    return-void
.end method
