.class Lorg/briarproject/briar/forum/ForumFactoryImpl;
.super Ljava/lang/Object;
.source "ForumFactoryImpl.java"

# interfaces
.implements Lorg/briarproject/briar/api/forum/ForumFactory;


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

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/briarproject/briar/forum/ForumFactoryImpl;->groupFactory:Lorg/briarproject/bramble/api/sync/GroupFactory;

    .line 35
    iput-object p2, p0, Lorg/briarproject/briar/forum/ForumFactoryImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 36
    iput-object p3, p0, Lorg/briarproject/briar/forum/ForumFactoryImpl;->random:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public createForum(Ljava/lang/String;)Lorg/briarproject/briar/api/forum/Forum;
    .locals 2

    .line 41
    invoke-static {p1}, Lorg/briarproject/bramble/util/StringUtils;->toUtf8(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_1

    const/16 v1, 0x64

    if-gt v0, v1, :cond_0

    const/16 v0, 0x20

    .line 45
    new-array v0, v0, [B

    .line 46
    iget-object v1, p0, Lorg/briarproject/briar/forum/ForumFactoryImpl;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 47
    invoke-virtual {p0, p1, v0}, Lorg/briarproject/briar/forum/ForumFactoryImpl;->createForum(Ljava/lang/String;[B)Lorg/briarproject/briar/api/forum/Forum;

    move-result-object p1

    return-object p1

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public createForum(Ljava/lang/String;[B)Lorg/briarproject/briar/api/forum/Forum;
    .locals 4

    const/4 v0, 0x2

    .line 53
    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    invoke-static {v0}, Lorg/briarproject/bramble/api/data/BdfList;->of([Ljava/lang/Object;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v0

    .line 54
    iget-object v2, p0, Lorg/briarproject/briar/forum/ForumFactoryImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v2, v0}, Lorg/briarproject/bramble/api/client/ClientHelper;->toByteArray(Lorg/briarproject/bramble/api/data/BdfList;)[B

    move-result-object v0

    .line 55
    iget-object v2, p0, Lorg/briarproject/briar/forum/ForumFactoryImpl;->groupFactory:Lorg/briarproject/bramble/api/sync/GroupFactory;

    sget-object v3, Lorg/briarproject/briar/api/forum/ForumManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    invoke-interface {v2, v3, v1, v0}, Lorg/briarproject/bramble/api/sync/GroupFactory;->createGroup(Lorg/briarproject/bramble/api/sync/ClientId;I[B)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object v0

    .line 57
    new-instance v1, Lorg/briarproject/briar/api/forum/Forum;

    invoke-direct {v1, v0, p1, p2}, Lorg/briarproject/briar/api/forum/Forum;-><init>(Lorg/briarproject/bramble/api/sync/Group;Ljava/lang/String;[B)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 59
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method
