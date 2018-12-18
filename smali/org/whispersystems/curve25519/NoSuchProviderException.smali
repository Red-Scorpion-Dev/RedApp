.class public Lorg/whispersystems/curve25519/NoSuchProviderException;
.super Ljava/lang/RuntimeException;
.source "NoSuchProviderException.java"


# instance fields
.field private final nested:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lorg/whispersystems/curve25519/NoSuchProviderException;->nested:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/whispersystems/curve25519/NoSuchProviderException;->nested:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getNested()Ljava/lang/Throwable;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/whispersystems/curve25519/NoSuchProviderException;->nested:Ljava/lang/Throwable;

    return-object v0
.end method
