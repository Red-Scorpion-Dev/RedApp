.class public Lorg/briarproject/bramble/system/LinuxSecureRandomSpi;
.super Ljava/security/SecureRandomSpi;
.source "LinuxSecureRandomSpi.java"


# static fields
.field private static final LOG:Ljava/util/logging/Logger;

.field private static final RANDOM_DEVICE:Ljava/io/File;


# instance fields
.field private final inputDevice:Ljava/io/File;

.field private final outputDevice:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    const-class v0, Lorg/briarproject/bramble/system/LinuxSecureRandomSpi;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/bramble/system/LinuxSecureRandomSpi;->LOG:Ljava/util/logging/Logger;

    .line 20
    new-instance v0, Ljava/io/File;

    const-string v1, "/dev/urandom"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/briarproject/bramble/system/LinuxSecureRandomSpi;->RANDOM_DEVICE:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 25
    sget-object v0, Lorg/briarproject/bramble/system/LinuxSecureRandomSpi;->RANDOM_DEVICE:Ljava/io/File;

    sget-object v1, Lorg/briarproject/bramble/system/LinuxSecureRandomSpi;->RANDOM_DEVICE:Ljava/io/File;

    invoke-direct {p0, v0, v1}, Lorg/briarproject/bramble/system/LinuxSecureRandomSpi;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/security/SecureRandomSpi;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/briarproject/bramble/system/LinuxSecureRandomSpi;->inputDevice:Ljava/io/File;

    .line 30
    iput-object p2, p0, Lorg/briarproject/bramble/system/LinuxSecureRandomSpi;->outputDevice:Ljava/io/File;

    return-void
.end method


# virtual methods
.method protected engineGenerateSeed(I)[B
    .locals 0

    .line 61
    new-array p1, p1, [B

    .line 62
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/system/LinuxSecureRandomSpi;->engineNextBytes([B)V

    return-object p1
.end method

.method protected engineNextBytes([B)V
    .locals 3

    .line 50
    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lorg/briarproject/bramble/system/LinuxSecureRandomSpi;->inputDevice:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 52
    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 53
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 55
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected engineSetSeed([B)V
    .locals 3

    .line 36
    :try_start_0
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lorg/briarproject/bramble/system/LinuxSecureRandomSpi;->outputDevice:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 38
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 39
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 40
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 43
    sget-object v0, Lorg/briarproject/bramble/system/LinuxSecureRandomSpi;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
