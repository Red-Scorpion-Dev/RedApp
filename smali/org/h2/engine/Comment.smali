.class public Lorg/h2/engine/Comment;
.super Lorg/h2/engine/DbObjectBase;
.source "Comment.java"


# instance fields
.field private commentText:Ljava/lang/String;

.field private final objectName:Ljava/lang/String;

.field private final objectType:I


# direct methods
.method public constructor <init>(Lorg/h2/engine/Database;ILorg/h2/engine/DbObject;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Lorg/h2/engine/DbObjectBase;-><init>()V

    .line 23
    invoke-static {p3}, Lorg/h2/engine/Comment;->getKey(Lorg/h2/engine/DbObject;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/h2/engine/Comment;->initDbObjectBase(Lorg/h2/engine/Database;ILjava/lang/String;I)V

    .line 24
    invoke-interface {p3}, Lorg/h2/engine/DbObject;->getType()I

    move-result p1

    iput p1, p0, Lorg/h2/engine/Comment;->objectType:I

    .line 25
    invoke-interface {p3}, Lorg/h2/engine/DbObject;->getSQL()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/engine/Comment;->objectName:Ljava/lang/String;

    return-void
.end method

.method static getKey(Lorg/h2/engine/DbObject;)Ljava/lang/String;
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lorg/h2/engine/DbObject;->getType()I

    move-result v1

    invoke-static {v1}, Lorg/h2/engine/Comment;->getTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/h2/engine/DbObject;->getSQL()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getTypeName(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 60
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string p0, "DOMAIN"

    return-object p0

    :pswitch_2
    const-string p0, "CONSTANT"

    return-object p0

    :pswitch_3
    const-string p0, "SCHEMA"

    return-object p0

    :pswitch_4
    const-string p0, "ALIAS"

    return-object p0

    :pswitch_5
    const-string p0, "ROLE"

    return-object p0

    :pswitch_6
    const-string p0, "CONSTRAINT"

    return-object p0

    :pswitch_7
    const-string p0, "TRIGGER"

    return-object p0

    :pswitch_8
    const-string p0, "SEQUENCE"

    return-object p0

    :pswitch_9
    const-string p0, "USER"

    return-object p0

    :pswitch_a
    const-string p0, "INDEX"

    return-object p0

    :pswitch_b
    const-string p0, "TABLE"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public checkRename()V
    .locals 0

    .line 94
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    return-void
.end method

.method public getCreateSQL()Ljava/lang/String;
    .locals 2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "COMMENT ON "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    iget v1, p0, Lorg/h2/engine/Comment;->objectType:I

    invoke-static {v1}, Lorg/h2/engine/Comment;->getTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/engine/Comment;->objectName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " IS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-object v1, p0, Lorg/h2/engine/Comment;->commentText:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "NULL"

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 77
    :cond_0
    iget-object v1, p0, Lorg/h2/engine/Comment;->commentText:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/util/StringUtils;->quoteStringSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreateSQLForCopy(Lorg/h2/table/Table;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 30
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getDropSQL()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0xd

    return v0
.end method

.method public removeChildrenAndResources(Lorg/h2/engine/Session;)V
    .locals 2

    .line 89
    iget-object v0, p0, Lorg/h2/engine/Comment;->database:Lorg/h2/engine/Database;

    invoke-virtual {p0}, Lorg/h2/engine/Comment;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/h2/engine/Database;->removeMeta(Lorg/h2/engine/Session;I)V

    return-void
.end method

.method public setCommentText(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lorg/h2/engine/Comment;->commentText:Ljava/lang/String;

    return-void
.end method
