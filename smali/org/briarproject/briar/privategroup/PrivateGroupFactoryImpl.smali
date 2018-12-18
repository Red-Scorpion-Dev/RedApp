.class Lorg/briarproject/briar/privategroup/PrivateGroupFactoryImpl;
.super Ljava/lang/Object;
.source "PrivateGroupFactoryImpl.java"

# interfaces
.implements Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

.field private final groupFactory:Lorg/briarproject/bramble/api/sync/GroupFactory;

.field private final random:Ljava/security/SecureRandom;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/sync/GroupFactory;Lorg/briarproject/bramble/api/client/ClientHelper;Ljava/security/SecureRandom;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/briarproject/briar/privategroup/PrivateGroupFactoryImpl;->groupFactory:Lorg/briarproject/bramble/api/sync/GroupFactory;

    .line 39
    iput-object p2, p0, Lorg/briarproject/briar/privategroup/PrivateGroupFactoryImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 40
    iput-object p3, p0, Lorg/briarproject/briar/privategroup/PrivateGroupFactoryImpl;->random:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public createPrivateGroup(Ljava/lang/String;Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/briar/api/privategroup/PrivateGroup;
    .locals 2

    .line 45
    invoke-static {p1}, Lorg/briarproject/bramble/util/StringUtils;->toUtf8(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_0

    const/16 v0, 0x20

    .line 48
    new-array v0, v0, [B

    .line 49
    iget-object v1, p0, Lorg/briarproject/briar/privategroup/PrivateGroupFactoryImpl;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 50
    invoke-virtual {p0, p1, p2, v0}, Lorg/briarproject/briar/privategroup/PrivateGroupFactoryImpl;->createPrivateGroup(Ljava/lang/String;Lorg/briarproject/bramble/api/identity/Author;[B)Lorg/briarproject/briar/api/privategroup/PrivateGroup;

    move-result-object p1

    return-object p1

    .line 47
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public createPrivateGroup(Ljava/lang/String;Lorg/briarproject/bramble/api/identity/Author;[B)Lorg/briarproject/briar/api/privategroup/PrivateGroup;
    .locals 4

    .line 57
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/PrivateGroupFactoryImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v0, p2}, Lorg/briarproject/bramble/api/client/ClientHelper;->toList(Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v0

    const/4 v1, 0x3

    .line 58
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    const/4 v0, 0x2

    aput-object p3, v1, v0

    invoke-static {v1}, Lorg/briarproject/bramble/api/data/BdfList;->of([Ljava/lang/Object;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lorg/briarproject/briar/privategroup/PrivateGroupFactoryImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v1, v0}, Lorg/briarproject/bramble/api/client/ClientHelper;->toByteArray(Lorg/briarproject/bramble/api/data/BdfList;)[B

    move-result-object v0

    .line 60
    iget-object v1, p0, Lorg/briarproject/briar/privategroup/PrivateGroupFactoryImpl;->groupFactory:Lorg/briarproject/bramble/api/sync/GroupFactory;

    sget-object v3, Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    invoke-interface {v1, v3, v2, v0}, Lorg/briarproject/bramble/api/sync/GroupFactory;->createGroup(Lorg/briarproject/bramble/api/sync/ClientId;I[B)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object v0

    .line 62
    new-instance v1, Lorg/briarproject/briar/api/privategroup/PrivateGroup;

    invoke-direct {v1, v0, p1, p2, p3}, Lorg/briarproject/briar/api/privategroup/PrivateGroup;-><init>(Lorg/briarproject/bramble/api/sync/Group;Ljava/lang/String;Lorg/briarproject/bramble/api/identity/Author;[B)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 64
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public parsePrivateGroup(Lorg/briarproject/bramble/api/sync/Group;)Lorg/briarproject/briar/api/privategroup/PrivateGroup;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/PrivateGroupFactoryImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Group;->getDescriptor()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/client/ClientHelper;->toList([B)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v0

    const/4 v1, 0x3

    .line 72
    invoke-static {v0, v1}, Lorg/briarproject/bramble/util/ValidationUtils;->checkSize(Lorg/briarproject/bramble/api/data/BdfList;I)V

    const/4 v1, 0x0

    .line 73
    invoke-virtual {v0, v1}, Lorg/briarproject/bramble/api/data/BdfList;->getList(I)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v1

    const/4 v2, 0x1

    .line 74
    invoke-virtual {v0, v2}, Lorg/briarproject/bramble/api/data/BdfList;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x64

    .line 75
    invoke-static {v3, v2, v4}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength(Ljava/lang/String;II)V

    const/4 v2, 0x2

    .line 76
    invoke-virtual {v0, v2}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v0

    const/16 v2, 0x20

    .line 77
    invoke-static {v0, v2}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength([BI)V

    .line 79
    iget-object v2, p0, Lorg/briarproject/briar/privategroup/PrivateGroupFactoryImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v2, v1}, Lorg/briarproject/bramble/api/client/ClientHelper;->parseAndValidateAuthor(Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v1

    .line 80
    new-instance v2, Lorg/briarproject/briar/api/privategroup/PrivateGroup;

    invoke-direct {v2, p1, v3, v1, v0}, Lorg/briarproject/briar/api/privategroup/PrivateGroup;-><init>(Lorg/briarproject/bramble/api/sync/Group;Ljava/lang/String;Lorg/briarproject/bramble/api/identity/Author;[B)V

    return-object v2
.end method
