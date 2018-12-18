.class public Lorg/h2/engine/User;
.super Lorg/h2/engine/RightOwner;
.source "User.java"


# instance fields
.field private admin:Z

.field private passwordHash:[B

.field private salt:[B

.field private final systemUser:Z


# direct methods
.method public constructor <init>(Lorg/h2/engine/Database;ILjava/lang/String;Z)V
    .locals 1

    const/16 v0, 0xd

    .line 36
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/h2/engine/RightOwner;-><init>(Lorg/h2/engine/Database;ILjava/lang/String;I)V

    .line 37
    iput-boolean p4, p0, Lorg/h2/engine/User;->systemUser:Z

    return-void
.end method


# virtual methods
.method public checkAdmin()V
    .locals 1

    .line 206
    iget-boolean v0, p0, Lorg/h2/engine/User;->admin:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x15fb8

    .line 207
    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public checkOwnsNoSchemas()V
    .locals 5

    .line 270
    iget-object v0, p0, Lorg/h2/engine/User;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getAllSchemas()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/schema/Schema;

    .line 271
    invoke-virtual {v1}, Lorg/h2/schema/Schema;->getOwner()Lorg/h2/engine/User;

    move-result-object v2

    if-eq p0, v2, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x15ffb

    const/4 v2, 0x2

    .line 272
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/h2/engine/User;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v1}, Lorg/h2/schema/Schema;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lorg/h2/message/DbException;->get(I[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_1
    return-void
.end method

.method public checkRename()V
    .locals 0

    return-void
.end method

.method public checkRight(Lorg/h2/table/Table;I)V
    .locals 0

    .line 100
    invoke-virtual {p0, p1, p2}, Lorg/h2/engine/User;->hasRight(Lorg/h2/table/Table;I)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const p2, 0x15ff0

    .line 101
    invoke-virtual {p1}, Lorg/h2/table/Table;->getSQL()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public checkSchemaAdmin()V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x10

    .line 218
    invoke-virtual {p0, v0, v1}, Lorg/h2/engine/User;->hasRight(Lorg/h2/table/Table;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x15fb8

    .line 219
    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public getChildren()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/engine/DbObject;",
            ">;"
        }
    .end annotation

    .line 230
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 231
    iget-object v1, p0, Lorg/h2/engine/User;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getAllRights()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/engine/Right;

    .line 232
    invoke-virtual {v2}, Lorg/h2/engine/Right;->getGrantee()Lorg/h2/engine/DbObject;

    move-result-object v3

    if-ne v3, p0, :cond_0

    .line 233
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 236
    :cond_1
    iget-object v1, p0, Lorg/h2/engine/User;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getAllSchemas()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/schema/Schema;

    .line 237
    invoke-virtual {v2}, Lorg/h2/schema/Schema;->getOwner()Lorg/h2/engine/User;

    move-result-object v3

    if-ne v3, p0, :cond_2

    .line 238
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public getCreateSQL()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 84
    invoke-virtual {p0, v0}, Lorg/h2/engine/User;->getCreateSQL(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreateSQL(Z)Ljava/lang/String;
    .locals 2

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE USER IF NOT EXISTS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lorg/h2/engine/User;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget-object v1, p0, Lorg/h2/engine/User;->comment:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, " COMMENT "

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/engine/User;->comment:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/util/StringUtils;->quoteStringSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p1, :cond_1

    const-string p1, " SALT \'"

    .line 168
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/h2/engine/User;->salt:[B

    invoke-static {p1}, Lorg/h2/util/StringUtils;->convertBytesToHex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' HASH \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/h2/engine/User;->passwordHash:[B

    invoke-static {p1}, Lorg/h2/util/StringUtils;->convertBytesToHex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p1, " PASSWORD \'\'"

    .line 174
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :goto_0
    iget-boolean p1, p0, Lorg/h2/engine/User;->admin:Z

    if-eqz p1, :cond_2

    const-string p1, " ADMIN"

    .line 177
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCreateSQLForCopy(Lorg/h2/table/Table;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 79
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

    const/4 v0, 0x2

    return v0
.end method

.method public hasRight(Lorg/h2/table/Table;I)Z
    .locals 3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 113
    iget-boolean v1, p0, Lorg/h2/engine/User;->systemUser:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 114
    invoke-virtual {p1}, Lorg/h2/table/Table;->checkWritingAllowed()V

    .line 116
    :cond_0
    iget-boolean v1, p0, Lorg/h2/engine/User;->admin:Z

    if-eqz v1, :cond_1

    return v0

    .line 119
    :cond_1
    iget-object v1, p0, Lorg/h2/engine/User;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getPublicRole()Lorg/h2/engine/Role;

    move-result-object v1

    .line 120
    invoke-virtual {v1, p1, p2}, Lorg/h2/engine/Role;->isRightGrantedRecursive(Lorg/h2/table/Table;I)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 123
    :cond_2
    instance-of v1, p1, Lorg/h2/table/MetaTable;

    if-nez v1, :cond_9

    instance-of v1, p1, Lorg/h2/table/RangeTable;

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_7

    const/4 v1, 0x0

    const/16 v2, 0x10

    .line 128
    invoke-virtual {p0, v1, v2}, Lorg/h2/engine/User;->hasRight(Lorg/h2/table/Table;I)Z

    move-result v1

    if-eqz v1, :cond_4

    return v0

    .line 131
    :cond_4
    invoke-virtual {p1}, Lorg/h2/table/Table;->getTableType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VIEW"

    .line 132
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 133
    move-object v1, p1

    check-cast v1, Lorg/h2/table/TableView;

    .line 134
    invoke-virtual {v1}, Lorg/h2/table/TableView;->getOwner()Lorg/h2/engine/User;

    move-result-object v1

    if-ne v1, p0, :cond_6

    return v0

    :cond_5
    if-nez v1, :cond_6

    return v0

    .line 143
    :cond_6
    invoke-virtual {p1}, Lorg/h2/table/Table;->isTemporary()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lorg/h2/table/Table;->isGlobalTemporary()Z

    move-result v1

    if-nez v1, :cond_7

    return v0

    .line 148
    :cond_7
    invoke-virtual {p0, p1, p2}, Lorg/h2/engine/User;->isRightGrantedRecursive(Lorg/h2/table/Table;I)Z

    move-result p1

    if-eqz p1, :cond_8

    return v0

    :cond_8
    const/4 p1, 0x0

    return p1

    :cond_9
    :goto_0
    return v0
.end method

.method public isAdmin()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lorg/h2/engine/User;->admin:Z

    return v0
.end method

.method public removeChildrenAndResources(Lorg/h2/engine/Session;)V
    .locals 3

    .line 246
    iget-object v0, p0, Lorg/h2/engine/User;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getAllRights()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/engine/Right;

    .line 247
    invoke-virtual {v1}, Lorg/h2/engine/Right;->getGrantee()Lorg/h2/engine/DbObject;

    move-result-object v2

    if-ne v2, p0, :cond_0

    .line 248
    iget-object v2, p0, Lorg/h2/engine/User;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2, p1, v1}, Lorg/h2/engine/Database;->removeDatabaseObject(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    goto :goto_0

    .line 251
    :cond_1
    iget-object v0, p0, Lorg/h2/engine/User;->database:Lorg/h2/engine/Database;

    invoke-virtual {p0}, Lorg/h2/engine/User;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/h2/engine/Database;->removeMeta(Lorg/h2/engine/Session;I)V

    const/4 p1, 0x0

    .line 252
    iput-object p1, p0, Lorg/h2/engine/User;->salt:[B

    .line 253
    iget-object v0, p0, Lorg/h2/engine/User;->passwordHash:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 254
    iput-object p1, p0, Lorg/h2/engine/User;->passwordHash:[B

    .line 255
    invoke-virtual {p0}, Lorg/h2/engine/User;->invalidate()V

    return-void
.end method

.method public setAdmin(Z)V
    .locals 0

    .line 41
    iput-boolean p1, p0, Lorg/h2/engine/User;->admin:Z

    return-void
.end method

.method public setSaltAndHash([B[B)V
    .locals 0

    .line 55
    iput-object p1, p0, Lorg/h2/engine/User;->salt:[B

    .line 56
    iput-object p2, p0, Lorg/h2/engine/User;->passwordHash:[B

    return-void
.end method

.method public setUserPasswordHash([B)V
    .locals 1

    if-eqz p1, :cond_1

    .line 67
    array-length v0, p1

    if-nez v0, :cond_0

    .line 68
    iput-object p1, p0, Lorg/h2/engine/User;->passwordHash:[B

    iput-object p1, p0, Lorg/h2/engine/User;->salt:[B

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 70
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/h2/engine/User;->salt:[B

    .line 71
    iget-object v0, p0, Lorg/h2/engine/User;->salt:[B

    invoke-static {v0}, Lorg/h2/util/MathUtils;->randomBytes([B)V

    .line 72
    iget-object v0, p0, Lorg/h2/engine/User;->salt:[B

    invoke-static {p1, v0}, Lorg/h2/security/SHA256;->getHashWithSalt([B[B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/h2/engine/User;->passwordHash:[B

    :cond_1
    :goto_0
    return-void
.end method

.method validateUserPasswordHash([B)Z
    .locals 1

    .line 189
    array-length v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/engine/User;->passwordHash:[B

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 192
    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    .line 193
    invoke-virtual {p0}, Lorg/h2/engine/User;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [C

    invoke-static {p1, v0}, Lorg/h2/security/SHA256;->getKeyPasswordHash(Ljava/lang/String;[C)[B

    move-result-object p1

    .line 195
    :cond_1
    iget-object v0, p0, Lorg/h2/engine/User;->salt:[B

    invoke-static {p1, v0}, Lorg/h2/security/SHA256;->getHashWithSalt([B[B)[B

    move-result-object p1

    .line 196
    iget-object v0, p0, Lorg/h2/engine/User;->passwordHash:[B

    invoke-static {p1, v0}, Lorg/h2/util/Utils;->compareSecure([B[B)Z

    move-result p1

    return p1
.end method
