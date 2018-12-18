.class Lnet/i2p/crypto/eddsa/EdDSAEngine$OneShotSpec;
.super Ljava/lang/Object;
.source "EdDSAEngine.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/i2p/crypto/eddsa/EdDSAEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OneShotSpec"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/i2p/crypto/eddsa/EdDSAEngine$1;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lnet/i2p/crypto/eddsa/EdDSAEngine$OneShotSpec;-><init>()V

    return-void
.end method
