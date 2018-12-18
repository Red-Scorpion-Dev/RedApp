.class Lorg/briarproject/bramble/system/LinuxSecureRandomProvider$LinuxProvider;
.super Ljava/security/Provider;
.source "LinuxSecureRandomProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/system/LinuxSecureRandomProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LinuxProvider"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 4

    const-string v0, "LinuxPRNG"

    const-string v1, "A Linux-specific PRNG using /dev/urandom"

    const-wide v2, 0x3ff199999999999aL    # 1.1

    .line 61
    invoke-direct {p0, v0, v2, v3, v1}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    const-string v0, "SecureRandom.SHA1PRNG"

    .line 66
    const-class v1, Lorg/briarproject/bramble/system/LinuxSecureRandomSpi;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/briarproject/bramble/system/LinuxSecureRandomProvider$LinuxProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SecureRandom.SHA1PRNG ImplementedIn"

    const-string v1, "Software"

    .line 67
    invoke-virtual {p0, v0, v1}, Lorg/briarproject/bramble/system/LinuxSecureRandomProvider$LinuxProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/bramble/system/LinuxSecureRandomProvider$1;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lorg/briarproject/bramble/system/LinuxSecureRandomProvider$LinuxProvider;-><init>()V

    return-void
.end method
