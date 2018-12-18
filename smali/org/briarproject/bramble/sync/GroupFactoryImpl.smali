.class Lorg/briarproject/bramble/sync/GroupFactoryImpl;
.super Ljava/lang/Object;
.source "GroupFactoryImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/sync/GroupFactory;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final FORMAT_VERSION_BYTES:[B


# instance fields
.field private final crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 23
    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    sput-object v1, Lorg/briarproject/bramble/sync/GroupFactoryImpl;->FORMAT_VERSION_BYTES:[B

    return-void
.end method

.method constructor <init>(Lorg/briarproject/bramble/api/crypto/CryptoComponent;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/briarproject/bramble/sync/GroupFactoryImpl;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    return-void
.end method


# virtual methods
.method public createGroup(Lorg/briarproject/bramble/api/sync/ClientId;I[B)Lorg/briarproject/bramble/api/sync/Group;
    .locals 6

    const/4 v0, 0x4

    .line 35
    new-array v1, v0, [B

    int-to-long v2, p2

    const/4 v4, 0x0

    .line 36
    invoke-static {v2, v3, v1, v4}, Lorg/briarproject/bramble/util/ByteUtils;->writeUint32(J[BI)V

    .line 37
    iget-object v2, p0, Lorg/briarproject/bramble/sync/GroupFactoryImpl;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    const-string v3, "org.briarproject.bramble/GROUP_ID"

    new-array v0, v0, [[B

    sget-object v5, Lorg/briarproject/bramble/sync/GroupFactoryImpl;->FORMAT_VERSION_BYTES:[B

    aput-object v5, v0, v4

    .line 38
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/ClientId;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/briarproject/bramble/util/StringUtils;->toUtf8(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v0, v5

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const/4 v1, 0x3

    aput-object p3, v0, v1

    .line 37
    invoke-interface {v2, v3, v0}, Lorg/briarproject/bramble/api/crypto/CryptoComponent;->hash(Ljava/lang/String;[[B)[B

    move-result-object v0

    .line 40
    new-instance v1, Lorg/briarproject/bramble/api/sync/Group;

    new-instance v2, Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-direct {v2, v0}, Lorg/briarproject/bramble/api/sync/GroupId;-><init>([B)V

    invoke-direct {v1, v2, p1, p2, p3}, Lorg/briarproject/bramble/api/sync/Group;-><init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/ClientId;I[B)V

    return-object v1
.end method
