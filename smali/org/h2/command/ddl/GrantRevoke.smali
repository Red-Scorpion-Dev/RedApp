.class public Lorg/h2/command/ddl/GrantRevoke;
.super Lorg/h2/command/ddl/DefineCommand;
.source "GrantRevoke.java"


# instance fields
.field private grantee:Lorg/h2/engine/RightOwner;

.field private operationType:I

.field private rightMask:I

.field private roleNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private schema:Lorg/h2/schema/Schema;

.field private final tables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/table/Table;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lorg/h2/command/ddl/DefineCommand;-><init>(Lorg/h2/engine/Session;)V

    .line 35
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/command/ddl/GrantRevoke;->tables:Ljava/util/ArrayList;

    return-void
.end method

.method private grantRight()V
    .locals 2

    .line 111
    iget-object v0, p0, Lorg/h2/command/ddl/GrantRevoke;->schema:Lorg/h2/schema/Schema;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lorg/h2/command/ddl/GrantRevoke;->schema:Lorg/h2/schema/Schema;

    invoke-direct {p0, v0}, Lorg/h2/command/ddl/GrantRevoke;->grantRight(Lorg/h2/engine/DbObject;)V

    .line 114
    :cond_0
    iget-object v0, p0, Lorg/h2/command/ddl/GrantRevoke;->tables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/table/Table;

    .line 115
    invoke-direct {p0, v1}, Lorg/h2/command/ddl/GrantRevoke;->grantRight(Lorg/h2/engine/DbObject;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private grantRight(Lorg/h2/engine/DbObject;)V
    .locals 8

    .line 120
    iget-object v0, p0, Lorg/h2/command/ddl/GrantRevoke;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lorg/h2/command/ddl/GrantRevoke;->grantee:Lorg/h2/engine/RightOwner;

    invoke-virtual {v1, p1}, Lorg/h2/engine/RightOwner;->getRightForObject(Lorg/h2/engine/DbObject;)Lorg/h2/engine/Right;

    move-result-object v1

    if-nez v1, :cond_0

    .line 123
    invoke-virtual {p0}, Lorg/h2/command/ddl/GrantRevoke;->getObjectId()I

    move-result v3

    .line 124
    new-instance v7, Lorg/h2/engine/Right;

    iget-object v4, p0, Lorg/h2/command/ddl/GrantRevoke;->grantee:Lorg/h2/engine/RightOwner;

    iget v5, p0, Lorg/h2/command/ddl/GrantRevoke;->rightMask:I

    move-object v1, v7

    move-object v2, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/h2/engine/Right;-><init>(Lorg/h2/engine/Database;ILorg/h2/engine/RightOwner;ILorg/h2/engine/DbObject;)V

    .line 125
    iget-object v1, p0, Lorg/h2/command/ddl/GrantRevoke;->grantee:Lorg/h2/engine/RightOwner;

    invoke-virtual {v1, p1, v7}, Lorg/h2/engine/RightOwner;->grantRight(Lorg/h2/engine/DbObject;Lorg/h2/engine/Right;)V

    .line 126
    iget-object p1, p0, Lorg/h2/command/ddl/GrantRevoke;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, p1, v7}, Lorg/h2/engine/Database;->addDatabaseObject(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {v1}, Lorg/h2/engine/Right;->getRightMask()I

    move-result p1

    iget v2, p0, Lorg/h2/command/ddl/GrantRevoke;->rightMask:I

    or-int/2addr p1, v2

    invoke-virtual {v1, p1}, Lorg/h2/engine/Right;->setRightMask(I)V

    .line 129
    iget-object p1, p0, Lorg/h2/command/ddl/GrantRevoke;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, p1, v1}, Lorg/h2/engine/Database;->updateMeta(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    :goto_0
    return-void
.end method

.method private grantRole(Lorg/h2/engine/Role;)V
    .locals 4

    .line 134
    iget-object v0, p0, Lorg/h2/command/ddl/GrantRevoke;->grantee:Lorg/h2/engine/RightOwner;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/h2/command/ddl/GrantRevoke;->grantee:Lorg/h2/engine/RightOwner;

    invoke-virtual {v0, p1}, Lorg/h2/engine/RightOwner;->isRoleGranted(Lorg/h2/engine/Role;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lorg/h2/command/ddl/GrantRevoke;->grantee:Lorg/h2/engine/RightOwner;

    instance-of v0, v0, Lorg/h2/engine/Role;

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lorg/h2/command/ddl/GrantRevoke;->grantee:Lorg/h2/engine/RightOwner;

    check-cast v0, Lorg/h2/engine/Role;

    .line 139
    invoke-virtual {p1, v0}, Lorg/h2/engine/Role;->isRoleGranted(Lorg/h2/engine/Role;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const v0, 0x15fda

    .line 141
    invoke-virtual {p1}, Lorg/h2/engine/Role;->getSQL()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 144
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/h2/command/ddl/GrantRevoke;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    .line 145
    invoke-virtual {p0}, Lorg/h2/command/ddl/GrantRevoke;->getObjectId()I

    move-result v1

    .line 146
    new-instance v2, Lorg/h2/engine/Right;

    iget-object v3, p0, Lorg/h2/command/ddl/GrantRevoke;->grantee:Lorg/h2/engine/RightOwner;

    invoke-direct {v2, v0, v1, v3, p1}, Lorg/h2/engine/Right;-><init>(Lorg/h2/engine/Database;ILorg/h2/engine/RightOwner;Lorg/h2/engine/Role;)V

    .line 147
    iget-object v1, p0, Lorg/h2/command/ddl/GrantRevoke;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1, v2}, Lorg/h2/engine/Database;->addDatabaseObject(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    .line 148
    iget-object v0, p0, Lorg/h2/command/ddl/GrantRevoke;->grantee:Lorg/h2/engine/RightOwner;

    invoke-virtual {v0, p1, v2}, Lorg/h2/engine/RightOwner;->grantRole(Lorg/h2/engine/Role;Lorg/h2/engine/Right;)V

    return-void
.end method

.method private revokeRight()V
    .locals 2

    .line 152
    iget-object v0, p0, Lorg/h2/command/ddl/GrantRevoke;->schema:Lorg/h2/schema/Schema;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lorg/h2/command/ddl/GrantRevoke;->schema:Lorg/h2/schema/Schema;

    invoke-direct {p0, v0}, Lorg/h2/command/ddl/GrantRevoke;->revokeRight(Lorg/h2/engine/DbObject;)V

    .line 155
    :cond_0
    iget-object v0, p0, Lorg/h2/command/ddl/GrantRevoke;->tables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/table/Table;

    .line 156
    invoke-direct {p0, v1}, Lorg/h2/command/ddl/GrantRevoke;->revokeRight(Lorg/h2/engine/DbObject;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private revokeRight(Lorg/h2/engine/DbObject;)V
    .locals 2

    .line 161
    iget-object v0, p0, Lorg/h2/command/ddl/GrantRevoke;->grantee:Lorg/h2/engine/RightOwner;

    invoke-virtual {v0, p1}, Lorg/h2/engine/RightOwner;->getRightForObject(Lorg/h2/engine/DbObject;)Lorg/h2/engine/Right;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 165
    :cond_0
    invoke-virtual {p1}, Lorg/h2/engine/Right;->getRightMask()I

    move-result v0

    .line 166
    iget v1, p0, Lorg/h2/command/ddl/GrantRevoke;->rightMask:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    .line 167
    iget-object v1, p0, Lorg/h2/command/ddl/GrantRevoke;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v1

    if-nez v0, :cond_1

    .line 169
    iget-object v0, p0, Lorg/h2/command/ddl/GrantRevoke;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v0, p1}, Lorg/h2/engine/Database;->removeDatabaseObject(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    goto :goto_0

    .line 171
    :cond_1
    invoke-virtual {p1, v0}, Lorg/h2/engine/Right;->setRightMask(I)V

    .line 172
    iget-object v0, p0, Lorg/h2/command/ddl/GrantRevoke;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v0, p1}, Lorg/h2/engine/Database;->updateMeta(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    :goto_0
    return-void
.end method

.method private revokeRole(Lorg/h2/engine/Role;)V
    .locals 2

    .line 178
    iget-object v0, p0, Lorg/h2/command/ddl/GrantRevoke;->grantee:Lorg/h2/engine/RightOwner;

    invoke-virtual {v0, p1}, Lorg/h2/engine/RightOwner;->getRightForRole(Lorg/h2/engine/Role;)Lorg/h2/engine/Right;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lorg/h2/command/ddl/GrantRevoke;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lorg/h2/command/ddl/GrantRevoke;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1, p1}, Lorg/h2/engine/Database;->removeDatabaseObject(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    return-void
.end method


# virtual methods
.method public addRight(I)V
    .locals 1

    .line 53
    iget v0, p0, Lorg/h2/command/ddl/GrantRevoke;->rightMask:I

    or-int/2addr p1, v0

    iput p1, p0, Lorg/h2/command/ddl/GrantRevoke;->rightMask:I

    return-void
.end method

.method public addRoleName(Ljava/lang/String;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/h2/command/ddl/GrantRevoke;->roleNames:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 63
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/ddl/GrantRevoke;->roleNames:Ljava/util/ArrayList;

    .line 65
    :cond_0
    iget-object v0, p0, Lorg/h2/command/ddl/GrantRevoke;->roleNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTable(Lorg/h2/table/Table;)V
    .locals 1

    .line 197
    iget-object v0, p0, Lorg/h2/command/ddl/GrantRevoke;->tables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getType()I
    .locals 1

    .line 211
    iget v0, p0, Lorg/h2/command/ddl/GrantRevoke;->operationType:I

    return v0
.end method

.method public isRightMode()Z
    .locals 1

    .line 225
    iget v0, p0, Lorg/h2/command/ddl/GrantRevoke;->rightMask:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRoleMode()Z
    .locals 1

    .line 218
    iget-object v0, p0, Lorg/h2/command/ddl/GrantRevoke;->roleNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTransactional()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setGranteeName(Ljava/lang/String;)V
    .locals 2

    .line 69
    iget-object v0, p0, Lorg/h2/command/ddl/GrantRevoke;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    .line 70
    invoke-virtual {v0, p1}, Lorg/h2/engine/Database;->findUser(Ljava/lang/String;)Lorg/h2/engine/User;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/command/ddl/GrantRevoke;->grantee:Lorg/h2/engine/RightOwner;

    .line 71
    iget-object v1, p0, Lorg/h2/command/ddl/GrantRevoke;->grantee:Lorg/h2/engine/RightOwner;

    if-nez v1, :cond_1

    .line 72
    invoke-virtual {v0, p1}, Lorg/h2/engine/Database;->findRole(Ljava/lang/String;)Lorg/h2/engine/Role;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/ddl/GrantRevoke;->grantee:Lorg/h2/engine/RightOwner;

    .line 73
    iget-object v0, p0, Lorg/h2/command/ddl/GrantRevoke;->grantee:Lorg/h2/engine/RightOwner;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x15fd7

    .line 74
    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public setOperationType(I)V
    .locals 0

    .line 44
    iput p1, p0, Lorg/h2/command/ddl/GrantRevoke;->operationType:I

    return-void
.end method

.method public setSchema(Lorg/h2/schema/Schema;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lorg/h2/command/ddl/GrantRevoke;->schema:Lorg/h2/schema/Schema;

    return-void
.end method

.method public update()I
    .locals 6

    .line 81
    iget-object v0, p0, Lorg/h2/command/ddl/GrantRevoke;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/User;->checkAdmin()V

    .line 82
    iget-object v0, p0, Lorg/h2/command/ddl/GrantRevoke;->session:Lorg/h2/engine/Session;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->commit(Z)V

    .line 83
    iget-object v0, p0, Lorg/h2/command/ddl/GrantRevoke;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lorg/h2/command/ddl/GrantRevoke;->roleNames:Ljava/util/ArrayList;

    const/16 v2, 0x32

    const/16 v3, 0x31

    if-eqz v1, :cond_3

    .line 85
    iget-object v1, p0, Lorg/h2/command/ddl/GrantRevoke;->roleNames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 86
    invoke-virtual {v0, v4}, Lorg/h2/engine/Database;->findRole(Ljava/lang/String;)Lorg/h2/engine/Role;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 90
    iget v4, p0, Lorg/h2/command/ddl/GrantRevoke;->operationType:I

    if-ne v4, v3, :cond_0

    .line 91
    invoke-direct {p0, v5}, Lorg/h2/command/ddl/GrantRevoke;->grantRole(Lorg/h2/engine/Role;)V

    goto :goto_0

    .line 92
    :cond_0
    iget v4, p0, Lorg/h2/command/ddl/GrantRevoke;->operationType:I

    if-ne v4, v2, :cond_1

    .line 93
    invoke-direct {p0, v5}, Lorg/h2/command/ddl/GrantRevoke;->revokeRole(Lorg/h2/engine/Role;)V

    goto :goto_0

    .line 95
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lorg/h2/command/ddl/GrantRevoke;->operationType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    goto :goto_0

    :cond_2
    const v0, 0x15fd6

    .line 88
    invoke-static {v0, v4}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 99
    :cond_3
    iget v0, p0, Lorg/h2/command/ddl/GrantRevoke;->operationType:I

    if-ne v0, v3, :cond_4

    .line 100
    invoke-direct {p0}, Lorg/h2/command/ddl/GrantRevoke;->grantRight()V

    goto :goto_1

    .line 101
    :cond_4
    iget v0, p0, Lorg/h2/command/ddl/GrantRevoke;->operationType:I

    if-ne v0, v2, :cond_5

    .line 102
    invoke-direct {p0}, Lorg/h2/command/ddl/GrantRevoke;->revokeRight()V

    goto :goto_1

    .line 104
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/command/ddl/GrantRevoke;->operationType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    :cond_6
    :goto_1
    const/4 v0, 0x0

    return v0
.end method
