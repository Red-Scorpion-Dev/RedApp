.class public Lorg/h2/engine/Right;
.super Lorg/h2/engine/DbObjectBase;
.source "Right.java"


# static fields
.field public static final ALL:I = 0xf

.field public static final ALTER_ANY_SCHEMA:I = 0x10

.field public static final DELETE:I = 0x2

.field public static final INSERT:I = 0x4

.field public static final SELECT:I = 0x1

.field public static final UPDATE:I = 0x8


# instance fields
.field private grantedObject:Lorg/h2/engine/DbObject;

.field private grantedRight:I

.field private grantedRole:Lorg/h2/engine/Role;

.field private grantee:Lorg/h2/engine/RightOwner;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Database;ILorg/h2/engine/RightOwner;ILorg/h2/engine/DbObject;)V
    .locals 2

    .line 77
    invoke-direct {p0}, Lorg/h2/engine/DbObjectBase;-><init>()V

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/h2/engine/Right;->initDbObjectBase(Lorg/h2/engine/Database;ILjava/lang/String;I)V

    .line 79
    iput-object p3, p0, Lorg/h2/engine/Right;->grantee:Lorg/h2/engine/RightOwner;

    .line 80
    iput p4, p0, Lorg/h2/engine/Right;->grantedRight:I

    .line 81
    iput-object p5, p0, Lorg/h2/engine/Right;->grantedObject:Lorg/h2/engine/DbObject;

    return-void
.end method

.method public constructor <init>(Lorg/h2/engine/Database;ILorg/h2/engine/RightOwner;Lorg/h2/engine/Role;)V
    .locals 2

    .line 70
    invoke-direct {p0}, Lorg/h2/engine/DbObjectBase;-><init>()V

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RIGHT_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/h2/engine/Right;->initDbObjectBase(Lorg/h2/engine/Database;ILjava/lang/String;I)V

    .line 72
    iput-object p3, p0, Lorg/h2/engine/Right;->grantee:Lorg/h2/engine/RightOwner;

    .line 73
    iput-object p4, p0, Lorg/h2/engine/Right;->grantedRole:Lorg/h2/engine/Role;

    return-void
.end method

.method private static appendRight(Ljava/lang/StringBuilder;IILjava/lang/String;Z)Z
    .locals 0

    and-int/2addr p1, p2

    if-eqz p1, :cond_1

    if-eqz p4, :cond_0

    const-string p1, ", "

    .line 88
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    :cond_0
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x1

    return p0

    :cond_1
    return p4
.end method

.method private getCreateSQLForCopy(Lorg/h2/engine/DbObject;)Ljava/lang/String;
    .locals 2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GRANT "

    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget-object v1, p0, Lorg/h2/engine/Right;->grantedRole:Lorg/h2/engine/Role;

    if-eqz v1, :cond_0

    .line 138
    iget-object p1, p0, Lorg/h2/engine/Right;->grantedRole:Lorg/h2/engine/Role;

    invoke-virtual {p1}, Lorg/h2/engine/Role;->getSQL()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {p0}, Lorg/h2/engine/Right;->getRights()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    .line 142
    instance-of v1, p1, Lorg/h2/schema/Schema;

    if-eqz v1, :cond_1

    const-string v1, " ON SCHEMA "

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/h2/engine/DbObject;->getSQL()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 144
    :cond_1
    instance-of v1, p1, Lorg/h2/table/Table;

    if-eqz v1, :cond_2

    const-string v1, " ON "

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/h2/engine/DbObject;->getSQL()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_0
    const-string p1, " TO "

    .line 149
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/h2/engine/Right;->grantee:Lorg/h2/engine/RightOwner;

    invoke-virtual {p1}, Lorg/h2/engine/RightOwner;->getSQL()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public checkRename()V
    .locals 0

    .line 179
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    return-void
.end method

.method public getCreateSQL()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/h2/engine/Right;->grantedObject:Lorg/h2/engine/DbObject;

    invoke-direct {p0, v0}, Lorg/h2/engine/Right;->getCreateSQLForCopy(Lorg/h2/engine/DbObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreateSQLForCopy(Lorg/h2/table/Table;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Lorg/h2/engine/Right;->getCreateSQLForCopy(Lorg/h2/engine/DbObject;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDropSQL()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getGrantedObject()Lorg/h2/engine/DbObject;
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/h2/engine/Right;->grantedObject:Lorg/h2/engine/DbObject;

    return-object v0
.end method

.method public getGrantedRole()Lorg/h2/engine/Role;
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/h2/engine/Right;->grantedRole:Lorg/h2/engine/Role;

    return-object v0
.end method

.method public getGrantee()Lorg/h2/engine/DbObject;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/h2/engine/Right;->grantee:Lorg/h2/engine/RightOwner;

    return-object v0
.end method

.method public getRightMask()I
    .locals 1

    .line 187
    iget v0, p0, Lorg/h2/engine/Right;->grantedRight:I

    return v0
.end method

.method public getRights()Ljava/lang/String;
    .locals 5

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    iget v1, p0, Lorg/h2/engine/Right;->grantedRight:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_0

    const-string v1, "ALL"

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 102
    iget v2, p0, Lorg/h2/engine/Right;->grantedRight:I

    const/4 v3, 0x1

    const-string v4, "SELECT"

    invoke-static {v0, v2, v3, v4, v1}, Lorg/h2/engine/Right;->appendRight(Ljava/lang/StringBuilder;IILjava/lang/String;Z)Z

    move-result v1

    .line 103
    iget v2, p0, Lorg/h2/engine/Right;->grantedRight:I

    const/4 v3, 0x2

    const-string v4, "DELETE"

    invoke-static {v0, v2, v3, v4, v1}, Lorg/h2/engine/Right;->appendRight(Ljava/lang/StringBuilder;IILjava/lang/String;Z)Z

    move-result v1

    .line 104
    iget v2, p0, Lorg/h2/engine/Right;->grantedRight:I

    const/4 v3, 0x4

    const-string v4, "INSERT"

    invoke-static {v0, v2, v3, v4, v1}, Lorg/h2/engine/Right;->appendRight(Ljava/lang/StringBuilder;IILjava/lang/String;Z)Z

    move-result v1

    .line 105
    iget v2, p0, Lorg/h2/engine/Right;->grantedRight:I

    const/16 v3, 0x10

    const-string v4, "ALTER ANY SCHEMA"

    invoke-static {v0, v2, v3, v4, v1}, Lorg/h2/engine/Right;->appendRight(Ljava/lang/StringBuilder;IILjava/lang/String;Z)Z

    move-result v1

    .line 107
    iget v2, p0, Lorg/h2/engine/Right;->grantedRight:I

    const/16 v3, 0x8

    const-string v4, "UPDATE"

    invoke-static {v0, v2, v3, v4, v1}, Lorg/h2/engine/Right;->appendRight(Ljava/lang/StringBuilder;IILjava/lang/String;Z)Z

    .line 109
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public removeChildrenAndResources(Lorg/h2/engine/Session;)V
    .locals 2

    .line 165
    iget-object v0, p0, Lorg/h2/engine/Right;->grantedRole:Lorg/h2/engine/Role;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lorg/h2/engine/Right;->grantee:Lorg/h2/engine/RightOwner;

    iget-object v1, p0, Lorg/h2/engine/Right;->grantedRole:Lorg/h2/engine/Role;

    invoke-virtual {v0, v1}, Lorg/h2/engine/RightOwner;->revokeRole(Lorg/h2/engine/Role;)V

    goto :goto_0

    .line 168
    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Right;->grantee:Lorg/h2/engine/RightOwner;

    iget-object v1, p0, Lorg/h2/engine/Right;->grantedObject:Lorg/h2/engine/DbObject;

    invoke-virtual {v0, v1}, Lorg/h2/engine/RightOwner;->revokeRight(Lorg/h2/engine/DbObject;)V

    .line 170
    :goto_0
    iget-object v0, p0, Lorg/h2/engine/Right;->database:Lorg/h2/engine/Database;

    invoke-virtual {p0}, Lorg/h2/engine/Right;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/h2/engine/Database;->removeMeta(Lorg/h2/engine/Session;I)V

    const/4 p1, 0x0

    .line 171
    iput-object p1, p0, Lorg/h2/engine/Right;->grantedRole:Lorg/h2/engine/Role;

    .line 172
    iput-object p1, p0, Lorg/h2/engine/Right;->grantedObject:Lorg/h2/engine/DbObject;

    .line 173
    iput-object p1, p0, Lorg/h2/engine/Right;->grantee:Lorg/h2/engine/RightOwner;

    .line 174
    invoke-virtual {p0}, Lorg/h2/engine/Right;->invalidate()V

    return-void
.end method

.method public setRightMask(I)V
    .locals 0

    .line 183
    iput p1, p0, Lorg/h2/engine/Right;->grantedRight:I

    return-void
.end method
