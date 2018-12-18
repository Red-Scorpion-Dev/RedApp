.class public abstract Lorg/h2/engine/DbObjectBase;
.super Ljava/lang/Object;
.source "DbObjectBase.java"

# interfaces
.implements Lorg/h2/engine/DbObject;


# instance fields
.field protected comment:Ljava/lang/String;

.field protected database:Lorg/h2/engine/Database;

.field private id:I

.field private modificationId:J

.field private objectName:Ljava/lang/String;

.field private temporary:Z

.field protected trace:Lorg/h2/message/Trace;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract checkRename()V
.end method

.method public getChildren()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/engine/DbObject;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getCreateSQL()Ljava/lang/String;
.end method

.method public getDatabase()Lorg/h2/engine/Database;
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    return-object v0
.end method

.method public abstract getDropSQL()Ljava/lang/String;
.end method

.method public getId()I
    .locals 1

    .line 118
    iget v0, p0, Lorg/h2/engine/DbObjectBase;->id:I

    return v0
.end method

.method public getModificationId()J
    .locals 2

    .line 94
    iget-wide v0, p0, Lorg/h2/engine/DbObjectBase;->modificationId:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->objectName:Ljava/lang/String;

    return-object v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->objectName:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/command/Parser;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initDbObjectBase(Lorg/h2/engine/Database;ILjava/lang/String;I)V
    .locals 0

    .line 47
    iput-object p1, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    .line 48
    invoke-virtual {p1, p4}, Lorg/h2/engine/Database;->getTrace(I)Lorg/h2/message/Trace;

    move-result-object p4

    iput-object p4, p0, Lorg/h2/engine/DbObjectBase;->trace:Lorg/h2/message/Trace;

    .line 49
    iput p2, p0, Lorg/h2/engine/DbObjectBase;->id:I

    .line 50
    iput-object p3, p0, Lorg/h2/engine/DbObjectBase;->objectName:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Lorg/h2/engine/Database;->getModificationMetaId()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/h2/engine/DbObjectBase;->modificationId:J

    return-void
.end method

.method protected invalidate()V
    .locals 1

    .line 131
    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->setModified()V

    const/4 v0, -0x1

    .line 132
    iput v0, p0, Lorg/h2/engine/DbObjectBase;->id:I

    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    .line 134
    iput-object v0, p0, Lorg/h2/engine/DbObjectBase;->trace:Lorg/h2/message/Trace;

    .line 135
    iput-object v0, p0, Lorg/h2/engine/DbObjectBase;->objectName:Ljava/lang/String;

    return-void
.end method

.method public isTemporary()Z
    .locals 1

    .line 147
    iget-boolean v0, p0, Lorg/h2/engine/DbObjectBase;->temporary:Z

    return v0
.end method

.method public abstract removeChildrenAndResources(Lorg/h2/engine/Session;)V
.end method

.method public rename(Ljava/lang/String;)V
    .locals 0

    .line 140
    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->checkRename()V

    .line 141
    iput-object p1, p0, Lorg/h2/engine/DbObjectBase;->objectName:Ljava/lang/String;

    .line 142
    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->setModified()V

    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lorg/h2/engine/DbObjectBase;->comment:Ljava/lang/String;

    return-void
.end method

.method public setModified()V
    .locals 2

    .line 89
    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getNextModificationMetaId()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lorg/h2/engine/DbObjectBase;->modificationId:J

    return-void
.end method

.method protected setObjectName(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lorg/h2/engine/DbObjectBase;->objectName:Ljava/lang/String;

    return-void
.end method

.method public setTemporary(Z)V
    .locals 0

    .line 152
    iput-boolean p1, p0, Lorg/h2/engine/DbObjectBase;->temporary:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/engine/DbObjectBase;->objectName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/engine/DbObjectBase;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
