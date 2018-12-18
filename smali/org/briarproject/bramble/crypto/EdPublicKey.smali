.class Lorg/briarproject/bramble/crypto/EdPublicKey;
.super Lorg/briarproject/bramble/api/Bytes;
.source "EdPublicKey.java"

# interfaces
.implements Lorg/briarproject/bramble/api/crypto/PublicKey;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# direct methods
.method constructor <init>([B)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/api/Bytes;-><init>([B)V

    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1

    .line 16
    invoke-virtual {p0}, Lorg/briarproject/bramble/crypto/EdPublicKey;->getBytes()[B

    move-result-object v0

    return-object v0
.end method
