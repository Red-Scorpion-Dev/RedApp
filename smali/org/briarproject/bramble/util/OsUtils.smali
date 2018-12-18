.class public Lorg/briarproject/bramble/util/OsUtils;
.super Ljava/lang/Object;
.source "OsUtils.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final os:Ljava/lang/String;

.field private static final vendor:Ljava/lang/String;

.field private static final version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "os.name"

    .line 11
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/briarproject/bramble/util/OsUtils;->os:Ljava/lang/String;

    const-string v0, "os.version"

    .line 13
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/briarproject/bramble/util/OsUtils;->version:Ljava/lang/String;

    const-string v0, "java.vendor"

    .line 15
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/briarproject/bramble/util/OsUtils;->vendor:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAndroid()Z
    .locals 2

    .line 30
    sget-object v0, Lorg/briarproject/bramble/util/OsUtils;->vendor:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/briarproject/bramble/util/OsUtils;->vendor:Ljava/lang/String;

    const-string v1, "Android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLinux()Z
    .locals 2

    .line 26
    sget-object v0, Lorg/briarproject/bramble/util/OsUtils;->os:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/briarproject/bramble/util/OsUtils;->os:Ljava/lang/String;

    const-string v1, "Linux"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/briarproject/bramble/util/OsUtils;->isAndroid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isMac()Z
    .locals 2

    .line 22
    sget-object v0, Lorg/briarproject/bramble/util/OsUtils;->os:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/briarproject/bramble/util/OsUtils;->os:Ljava/lang/String;

    const-string v1, "Mac OS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isWindows()Z
    .locals 2

    .line 18
    sget-object v0, Lorg/briarproject/bramble/util/OsUtils;->os:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/briarproject/bramble/util/OsUtils;->os:Ljava/lang/String;

    const-string v1, "Windows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
