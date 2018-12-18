.class Lorg/briarproject/bramble/crypto/ScryptKdf;
.super Ljava/lang/Object;
.source "ScryptKdf.java"

# interfaces
.implements Lorg/briarproject/bramble/crypto/PasswordBasedKdf;


# static fields
.field private static final BLOCK_SIZE:I = 0x8

.field private static final LOG:Ljava/util/logging/Logger;

.field private static final MAX_COST:I = 0x100000

.field private static final MIN_COST:I = 0x100

.field private static final PARALLELIZATION:I = 0x1

.field private static final TARGET_MS:I = 0x3e8


# instance fields
.field private final clock:Lorg/briarproject/bramble/api/system/Clock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lorg/briarproject/bramble/crypto/ScryptKdf;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/bramble/crypto/ScryptKdf;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lorg/briarproject/bramble/api/system/Clock;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/briarproject/bramble/crypto/ScryptKdf;->clock:Lorg/briarproject/bramble/api/system/Clock;

    return-void
.end method

.method private measureDuration(I)J
    .locals 9

    const/16 v0, 0x10

    .line 46
    new-array v1, v0, [B

    const/16 v0, 0x20

    new-array v2, v0, [B

    .line 47
    iget-object v0, p0, Lorg/briarproject/bramble/crypto/ScryptKdf;->clock:Lorg/briarproject/bramble/api/system/Clock;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v7

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/16 v6, 0x20

    move v3, p1

    .line 48
    invoke-static/range {v1 .. v6}, Lorg/spongycastle/crypto/generators/SCrypt;->generate([B[BIIII)[B

    .line 50
    iget-object p1, p0, Lorg/briarproject/bramble/crypto/ScryptKdf;->clock:Lorg/briarproject/bramble/api/system/Clock;

    invoke-interface {p1}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v7

    return-wide v0
.end method


# virtual methods
.method public chooseCostParameter()I
    .locals 7

    const/16 v0, 0x100

    :goto_0
    mul-int/lit8 v1, v0, 0x2

    const/high16 v2, 0x100000

    if-gt v1, v2, :cond_0

    .line 38
    invoke-direct {p0, v0}, Lorg/briarproject/bramble/crypto/ScryptKdf;->measureDuration(I)J

    move-result-wide v2

    const-wide/16 v4, 0x2

    mul-long v2, v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    move v0, v1

    goto :goto_0

    .line 40
    :cond_0
    sget-object v1, Lorg/briarproject/bramble/crypto/ScryptKdf;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    sget-object v1, Lorg/briarproject/bramble/crypto/ScryptKdf;->LOG:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KDF cost parameter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method public deriveKey(Ljava/lang/String;[BI)Lorg/briarproject/bramble/api/crypto/SecretKey;
    .locals 8

    .line 55
    invoke-static {}, Lorg/briarproject/bramble/util/LogUtils;->now()J

    move-result-wide v0

    .line 56
    invoke-static {p1}, Lorg/briarproject/bramble/util/StringUtils;->toUtf8(Ljava/lang/String;)[B

    move-result-object v2

    .line 57
    new-instance p1, Lorg/briarproject/bramble/api/crypto/SecretKey;

    const/16 v5, 0x8

    const/4 v6, 0x1

    const/16 v7, 0x20

    move-object v3, p2

    move v4, p3

    invoke-static/range {v2 .. v7}, Lorg/spongycastle/crypto/generators/SCrypt;->generate([B[BIIII)[B

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/briarproject/bramble/api/crypto/SecretKey;-><init>([B)V

    .line 59
    sget-object p2, Lorg/briarproject/bramble/crypto/ScryptKdf;->LOG:Ljava/util/logging/Logger;

    const-string p3, "Deriving key from password"

    invoke-static {p2, p3, v0, v1}, Lorg/briarproject/bramble/util/LogUtils;->logDuration(Ljava/util/logging/Logger;Ljava/lang/String;J)V

    return-object p1
.end method
