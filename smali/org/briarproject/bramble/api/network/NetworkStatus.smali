.class public Lorg/briarproject/bramble/api/network/NetworkStatus;
.super Ljava/lang/Object;
.source "NetworkStatus.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final connected:Z

.field private final wifi:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-boolean p1, p0, Lorg/briarproject/bramble/api/network/NetworkStatus;->connected:Z

    .line 15
    iput-boolean p2, p0, Lorg/briarproject/bramble/api/network/NetworkStatus;->wifi:Z

    return-void
.end method


# virtual methods
.method public isConnected()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lorg/briarproject/bramble/api/network/NetworkStatus;->connected:Z

    return v0
.end method

.method public isWifi()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lorg/briarproject/bramble/api/network/NetworkStatus;->wifi:Z

    return v0
.end method
