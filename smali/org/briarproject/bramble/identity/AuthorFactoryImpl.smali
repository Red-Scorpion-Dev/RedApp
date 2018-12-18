.class Lorg/briarproject/bramble/identity/AuthorFactoryImpl;
.super Ljava/lang/Object;
.source "AuthorFactoryImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/identity/AuthorFactory;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final clock:Lorg/briarproject/bramble/api/system/Clock;

.field private final crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/crypto/CryptoComponent;Lorg/briarproject/bramble/api/system/Clock;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/briarproject/bramble/identity/AuthorFactoryImpl;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    .line 30
    iput-object p2, p0, Lorg/briarproject/bramble/identity/AuthorFactoryImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    return-void
.end method

.method private getId(ILjava/lang/String;[B)Lorg/briarproject/bramble/api/identity/AuthorId;
    .locals 5

    const/4 v0, 0x4

    .line 60
    new-array v0, v0, [B

    int-to-long v1, p1

    const/4 p1, 0x0

    .line 61
    invoke-static {v1, v2, v0, p1}, Lorg/briarproject/bramble/util/ByteUtils;->writeUint32(J[BI)V

    .line 62
    new-instance v1, Lorg/briarproject/bramble/api/identity/AuthorId;

    iget-object v2, p0, Lorg/briarproject/bramble/identity/AuthorFactoryImpl;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    const-string v3, "org.briarproject.bramble/AUTHOR_ID"

    const/4 v4, 0x3

    new-array v4, v4, [[B

    aput-object v0, v4, p1

    .line 63
    invoke-static {p2}, Lorg/briarproject/bramble/util/StringUtils;->toUtf8(Ljava/lang/String;)[B

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v4, p2

    const/4 p1, 0x2

    aput-object p3, v4, p1

    .line 62
    invoke-interface {v2, v3, v4}, Lorg/briarproject/bramble/api/crypto/CryptoComponent;->hash(Ljava/lang/String;[[B)[B

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/briarproject/bramble/api/identity/AuthorId;-><init>([B)V

    return-object v1
.end method


# virtual methods
.method public createAuthor(ILjava/lang/String;[B)Lorg/briarproject/bramble/api/identity/Author;
    .locals 2

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/bramble/identity/AuthorFactoryImpl;->getId(ILjava/lang/String;[B)Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v0

    .line 42
    new-instance v1, Lorg/briarproject/bramble/api/identity/Author;

    invoke-direct {v1, v0, p1, p2, p3}, Lorg/briarproject/bramble/api/identity/Author;-><init>(Lorg/briarproject/bramble/api/identity/AuthorId;ILjava/lang/String;[B)V

    return-object v1
.end method

.method public createAuthor(Ljava/lang/String;[B)Lorg/briarproject/bramble/api/identity/Author;
    .locals 1

    const/4 v0, 0x1

    .line 35
    invoke-virtual {p0, v0, p1, p2}, Lorg/briarproject/bramble/identity/AuthorFactoryImpl;->createAuthor(ILjava/lang/String;[B)Lorg/briarproject/bramble/api/identity/Author;

    move-result-object p1

    return-object p1
.end method

.method public createLocalAuthor(ILjava/lang/String;[B[B)Lorg/briarproject/bramble/api/identity/LocalAuthor;
    .locals 9

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/bramble/identity/AuthorFactoryImpl;->getId(ILjava/lang/String;[B)Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v1

    .line 55
    new-instance v8, Lorg/briarproject/bramble/api/identity/LocalAuthor;

    iget-object v0, p0, Lorg/briarproject/bramble/identity/AuthorFactoryImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    .line 56
    invoke-interface {v0}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v6

    move-object v0, v8

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lorg/briarproject/bramble/api/identity/LocalAuthor;-><init>(Lorg/briarproject/bramble/api/identity/AuthorId;ILjava/lang/String;[B[BJ)V

    return-object v8
.end method

.method public createLocalAuthor(Ljava/lang/String;[B[B)Lorg/briarproject/bramble/api/identity/LocalAuthor;
    .locals 1

    const/4 v0, 0x1

    .line 48
    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/briarproject/bramble/identity/AuthorFactoryImpl;->createLocalAuthor(ILjava/lang/String;[B[B)Lorg/briarproject/bramble/api/identity/LocalAuthor;

    move-result-object p1

    return-object p1
.end method
