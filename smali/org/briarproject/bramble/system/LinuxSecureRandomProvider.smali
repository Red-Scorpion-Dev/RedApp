.class Lorg/briarproject/bramble/system/LinuxSecureRandomProvider;
.super Lorg/briarproject/bramble/system/AbstractSecureRandomProvider;
.source "LinuxSecureRandomProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/bramble/system/LinuxSecureRandomProvider$LinuxProvider;
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;

.field private static final RANDOM_DEVICE:Ljava/io/File;


# instance fields
.field private final outputDevice:Ljava/io/File;

.field private final seeded:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    const-class v0, Lorg/briarproject/bramble/system/LinuxSecureRandomProvider;

    .line 23
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/bramble/system/LinuxSecureRandomProvider;->LOG:Ljava/util/logging/Logger;

    .line 25
    new-instance v0, Ljava/io/File;

    const-string v1, "/dev/urandom"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/briarproject/bramble/system/LinuxSecureRandomProvider;->RANDOM_DEVICE:Ljava/io/File;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 31
    sget-object v0, Lorg/briarproject/bramble/system/LinuxSecureRandomProvider;->RANDOM_DEVICE:Ljava/io/File;

    invoke-direct {p0, v0}, Lorg/briarproject/bramble/system/LinuxSecureRandomProvider;-><init>(Ljava/io/File;)V

    return-void
.end method

.method constructor <init>(Ljava/io/File;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Lorg/briarproject/bramble/system/AbstractSecureRandomProvider;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/briarproject/bramble/system/LinuxSecureRandomProvider;->seeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    iput-object p1, p0, Lorg/briarproject/bramble/system/LinuxSecureRandomProvider;->outputDevice:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public getProvider()Ljava/security/Provider;
    .locals 2

    .line 40
    iget-object v0, p0, Lorg/briarproject/bramble/system/LinuxSecureRandomProvider;->seeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/briarproject/bramble/system/LinuxSecureRandomProvider;->writeSeed()V

    .line 41
    :cond_0
    new-instance v0, Lorg/briarproject/bramble/system/LinuxSecureRandomProvider$LinuxProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/briarproject/bramble/system/LinuxSecureRandomProvider$LinuxProvider;-><init>(Lorg/briarproject/bramble/system/LinuxSecureRandomProvider$1;)V

    return-object v0
.end method

.method protected writeSeed()V
    .locals 3

    .line 46
    :try_start_0
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lorg/briarproject/bramble/system/LinuxSecureRandomProvider;->outputDevice:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 48
    invoke-virtual {p0, v0}, Lorg/briarproject/bramble/system/LinuxSecureRandomProvider;->writeToEntropyPool(Ljava/io/DataOutputStream;)V

    .line 49
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 50
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 53
    sget-object v1, Lorg/briarproject/bramble/system/LinuxSecureRandomProvider;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
