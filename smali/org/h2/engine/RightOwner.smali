.class public abstract Lorg/h2/engine/RightOwner;
.super Lorg/h2/engine/DbObjectBase;
.source "RightOwner.java"


# instance fields
.field private grantedRights:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/h2/engine/DbObject;",
            "Lorg/h2/engine/Right;",
            ">;"
        }
    .end annotation
.end field

.field private grantedRoles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/h2/engine/Role;",
            "Lorg/h2/engine/Right;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/h2/engine/Database;ILjava/lang/String;I)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/h2/engine/DbObjectBase;-><init>()V

    .line 30
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/h2/engine/RightOwner;->initDbObjectBase(Lorg/h2/engine/Database;ILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getRightForObject(Lorg/h2/engine/DbObject;)Lorg/h2/engine/Right;
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/h2/engine/RightOwner;->grantedRights:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 165
    :cond_0
    iget-object v0, p0, Lorg/h2/engine/RightOwner;->grantedRights:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/engine/Right;

    return-object p1
.end method

.method public getRightForRole(Lorg/h2/engine/Role;)Lorg/h2/engine/Right;
    .locals 1

    .line 175
    iget-object v0, p0, Lorg/h2/engine/RightOwner;->grantedRoles:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 178
    :cond_0
    iget-object v0, p0, Lorg/h2/engine/RightOwner;->grantedRoles:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/engine/Right;

    return-object p1
.end method

.method public grantRight(Lorg/h2/engine/DbObject;Lorg/h2/engine/Right;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/h2/engine/RightOwner;->grantedRights:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 103
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/RightOwner;->grantedRights:Ljava/util/HashMap;

    .line 105
    :cond_0
    iget-object v0, p0, Lorg/h2/engine/RightOwner;->grantedRights:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public grantRole(Lorg/h2/engine/Role;Lorg/h2/engine/Right;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/h2/engine/RightOwner;->grantedRoles:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 131
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/RightOwner;->grantedRoles:Ljava/util/HashMap;

    .line 133
    :cond_0
    iget-object v0, p0, Lorg/h2/engine/RightOwner;->grantedRoles:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method isRightGrantedRecursive(Lorg/h2/table/Table;I)Z
    .locals 3

    .line 68
    iget-object v0, p0, Lorg/h2/engine/RightOwner;->grantedRights:Ljava/util/HashMap;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 70
    iget-object v0, p0, Lorg/h2/engine/RightOwner;->grantedRights:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/h2/table/Table;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/engine/Right;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Lorg/h2/engine/Right;->getRightMask()I

    move-result v0

    and-int/2addr v0, p2

    if-ne v0, p2, :cond_0

    return v1

    .line 77
    :cond_0
    iget-object v0, p0, Lorg/h2/engine/RightOwner;->grantedRights:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/engine/Right;

    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {v0}, Lorg/h2/engine/Right;->getRightMask()I

    move-result v0

    and-int/2addr v0, p2

    if-ne v0, p2, :cond_1

    return v1

    .line 84
    :cond_1
    iget-object v0, p0, Lorg/h2/engine/RightOwner;->grantedRoles:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    .line 85
    iget-object v0, p0, Lorg/h2/engine/RightOwner;->grantedRoles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/engine/RightOwner;

    .line 86
    invoke-virtual {v2, p1, p2}, Lorg/h2/engine/RightOwner;->isRightGrantedRecursive(Lorg/h2/table/Table;I)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public isRoleGranted(Lorg/h2/engine/Role;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 43
    :cond_0
    iget-object v1, p0, Lorg/h2/engine/RightOwner;->grantedRoles:Ljava/util/HashMap;

    if-eqz v1, :cond_3

    .line 44
    iget-object v1, p0, Lorg/h2/engine/RightOwner;->grantedRoles:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/engine/Role;

    if-ne v2, p1, :cond_2

    return v0

    .line 48
    :cond_2
    invoke-virtual {v2, p1}, Lorg/h2/engine/Role;->isRoleGranted(Lorg/h2/engine/Role;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method revokeRight(Lorg/h2/engine/DbObject;)V
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/h2/engine/RightOwner;->grantedRights:Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lorg/h2/engine/RightOwner;->grantedRights:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object p1, p0, Lorg/h2/engine/RightOwner;->grantedRights:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 119
    iput-object p1, p0, Lorg/h2/engine/RightOwner;->grantedRights:Ljava/util/HashMap;

    :cond_1
    return-void
.end method

.method revokeRole(Lorg/h2/engine/Role;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/h2/engine/RightOwner;->grantedRoles:Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lorg/h2/engine/RightOwner;->grantedRoles:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/engine/Right;

    if-nez v0, :cond_1

    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Lorg/h2/engine/RightOwner;->grantedRoles:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object p1, p0, Lorg/h2/engine/RightOwner;->grantedRoles:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 151
    iput-object p1, p0, Lorg/h2/engine/RightOwner;->grantedRoles:Ljava/util/HashMap;

    :cond_2
    return-void
.end method
