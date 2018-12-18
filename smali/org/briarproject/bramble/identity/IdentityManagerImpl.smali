.class Lorg/briarproject/bramble/identity/IdentityManagerImpl;
.super Ljava/lang/Object;
.source "IdentityManagerImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/identity/IdentityManager;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private final authorFactory:Lorg/briarproject/bramble/api/identity/AuthorFactory;

.field private volatile cachedAuthor:Lorg/briarproject/bramble/api/identity/LocalAuthor;

.field private final crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

.field private final db:Lorg/briarproject/bramble/api/db/DatabaseComponent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lorg/briarproject/bramble/identity/IdentityManagerImpl;

    .line 27
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/bramble/identity/IdentityManagerImpl;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/crypto/CryptoComponent;Lorg/briarproject/bramble/api/identity/AuthorFactory;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/briarproject/bramble/identity/IdentityManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    .line 41
    iput-object p2, p0, Lorg/briarproject/bramble/identity/IdentityManagerImpl;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    .line 42
    iput-object p3, p0, Lorg/briarproject/bramble/identity/IdentityManagerImpl;->authorFactory:Lorg/briarproject/bramble/api/identity/AuthorFactory;

    return-void
.end method

.method public static synthetic lambda$2WEHn9nune8RfXoLEym73aUbpg4(Lorg/briarproject/bramble/identity/IdentityManagerImpl;Lorg/briarproject/bramble/api/db/Transaction;)Lorg/briarproject/bramble/api/identity/LocalAuthor;
    .locals 0

    invoke-direct {p0, p1}, Lorg/briarproject/bramble/identity/IdentityManagerImpl;->loadLocalAuthor(Lorg/briarproject/bramble/api/db/Transaction;)Lorg/briarproject/bramble/api/identity/LocalAuthor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$storeLocalAuthor$0(Lorg/briarproject/bramble/identity/IdentityManagerImpl;Lorg/briarproject/bramble/api/identity/LocalAuthor;Lorg/briarproject/bramble/api/db/Transaction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lorg/briarproject/bramble/identity/IdentityManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v0, p2, p1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->addLocalAuthor(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/identity/LocalAuthor;)V

    return-void
.end method

.method private loadLocalAuthor(Lorg/briarproject/bramble/api/db/Transaction;)Lorg/briarproject/bramble/api/identity/LocalAuthor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lorg/briarproject/bramble/identity/IdentityManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v0, p1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getLocalAuthors(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/identity/LocalAuthor;

    return-object p1
.end method


# virtual methods
.method public createLocalAuthor(Ljava/lang/String;)Lorg/briarproject/bramble/api/identity/LocalAuthor;
    .locals 5

    .line 47
    invoke-static {}, Lorg/briarproject/bramble/util/LogUtils;->now()J

    move-result-wide v0

    .line 48
    iget-object v2, p0, Lorg/briarproject/bramble/identity/IdentityManagerImpl;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    invoke-interface {v2}, Lorg/briarproject/bramble/api/crypto/CryptoComponent;->generateSignatureKeyPair()Lorg/briarproject/bramble/api/crypto/KeyPair;

    move-result-object v2

    .line 49
    invoke-virtual {v2}, Lorg/briarproject/bramble/api/crypto/KeyPair;->getPublic()Lorg/briarproject/bramble/api/crypto/PublicKey;

    move-result-object v3

    invoke-interface {v3}, Lorg/briarproject/bramble/api/crypto/PublicKey;->getEncoded()[B

    move-result-object v3

    .line 50
    invoke-virtual {v2}, Lorg/briarproject/bramble/api/crypto/KeyPair;->getPrivate()Lorg/briarproject/bramble/api/crypto/PrivateKey;

    move-result-object v2

    invoke-interface {v2}, Lorg/briarproject/bramble/api/crypto/PrivateKey;->getEncoded()[B

    move-result-object v2

    .line 51
    iget-object v4, p0, Lorg/briarproject/bramble/identity/IdentityManagerImpl;->authorFactory:Lorg/briarproject/bramble/api/identity/AuthorFactory;

    invoke-interface {v4, p1, v3, v2}, Lorg/briarproject/bramble/api/identity/AuthorFactory;->createLocalAuthor(Ljava/lang/String;[B[B)Lorg/briarproject/bramble/api/identity/LocalAuthor;

    move-result-object p1

    .line 53
    sget-object v2, Lorg/briarproject/bramble/identity/IdentityManagerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v3, "Creating local author"

    invoke-static {v2, v3, v0, v1}, Lorg/briarproject/bramble/util/LogUtils;->logDuration(Ljava/util/logging/Logger;Ljava/lang/String;J)V

    return-object p1
.end method

.method public getLocalAuthor()Lorg/briarproject/bramble/api/identity/LocalAuthor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lorg/briarproject/bramble/identity/IdentityManagerImpl;->cachedAuthor:Lorg/briarproject/bramble/api/identity/LocalAuthor;

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lorg/briarproject/bramble/identity/IdentityManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v1, 0x1

    new-instance v2, Lorg/briarproject/bramble/identity/-$$Lambda$IdentityManagerImpl$2WEHn9nune8RfXoLEym73aUbpg4;

    invoke-direct {v2, p0}, Lorg/briarproject/bramble/identity/-$$Lambda$IdentityManagerImpl$2WEHn9nune8RfXoLEym73aUbpg4;-><init>(Lorg/briarproject/bramble/identity/IdentityManagerImpl;)V

    .line 78
    invoke-interface {v0, v1, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->transactionWithResult(ZLorg/briarproject/bramble/api/db/DbCallable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/identity/LocalAuthor;

    iput-object v0, p0, Lorg/briarproject/bramble/identity/IdentityManagerImpl;->cachedAuthor:Lorg/briarproject/bramble/api/identity/LocalAuthor;

    .line 79
    sget-object v0, Lorg/briarproject/bramble/identity/IdentityManagerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Local author loaded"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 81
    :cond_0
    iget-object v0, p0, Lorg/briarproject/bramble/identity/IdentityManagerImpl;->cachedAuthor:Lorg/briarproject/bramble/api/identity/LocalAuthor;

    if-eqz v0, :cond_1

    return-object v0

    .line 82
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getLocalAuthor(Lorg/briarproject/bramble/api/db/Transaction;)Lorg/briarproject/bramble/api/identity/LocalAuthor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lorg/briarproject/bramble/identity/IdentityManagerImpl;->cachedAuthor:Lorg/briarproject/bramble/api/identity/LocalAuthor;

    if-nez v0, :cond_0

    .line 90
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/identity/IdentityManagerImpl;->loadLocalAuthor(Lorg/briarproject/bramble/api/db/Transaction;)Lorg/briarproject/bramble/api/identity/LocalAuthor;

    move-result-object p1

    iput-object p1, p0, Lorg/briarproject/bramble/identity/IdentityManagerImpl;->cachedAuthor:Lorg/briarproject/bramble/api/identity/LocalAuthor;

    .line 91
    sget-object p1, Lorg/briarproject/bramble/identity/IdentityManagerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v0, "Local author loaded"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 93
    :cond_0
    iget-object p1, p0, Lorg/briarproject/bramble/identity/IdentityManagerImpl;->cachedAuthor:Lorg/briarproject/bramble/api/identity/LocalAuthor;

    if-eqz p1, :cond_1

    return-object p1

    .line 94
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public registerLocalAuthor(Lorg/briarproject/bramble/api/identity/LocalAuthor;)V
    .locals 1

    .line 59
    iput-object p1, p0, Lorg/briarproject/bramble/identity/IdentityManagerImpl;->cachedAuthor:Lorg/briarproject/bramble/api/identity/LocalAuthor;

    .line 60
    sget-object p1, Lorg/briarproject/bramble/identity/IdentityManagerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v0, "Local author registered"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public storeLocalAuthor()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lorg/briarproject/bramble/identity/IdentityManagerImpl;->cachedAuthor:Lorg/briarproject/bramble/api/identity/LocalAuthor;

    if-nez v0, :cond_0

    .line 67
    sget-object v0, Lorg/briarproject/bramble/identity/IdentityManagerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "No local author to store"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-void

    .line 70
    :cond_0
    iget-object v1, p0, Lorg/briarproject/bramble/identity/IdentityManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v2, 0x0

    new-instance v3, Lorg/briarproject/bramble/identity/-$$Lambda$IdentityManagerImpl$9Y56L3yYoy8c7CW0i2ZnSPKB_8M;

    invoke-direct {v3, p0, v0}, Lorg/briarproject/bramble/identity/-$$Lambda$IdentityManagerImpl$9Y56L3yYoy8c7CW0i2ZnSPKB_8M;-><init>(Lorg/briarproject/bramble/identity/IdentityManagerImpl;Lorg/briarproject/bramble/api/identity/LocalAuthor;)V

    invoke-interface {v1, v2, v3}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->transaction(ZLorg/briarproject/bramble/api/db/DbRunnable;)V

    .line 71
    sget-object v0, Lorg/briarproject/bramble/identity/IdentityManagerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Local author stored"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-void
.end method
