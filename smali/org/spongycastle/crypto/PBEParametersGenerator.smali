.class public abstract Lorg/spongycastle/crypto/PBEParametersGenerator;
.super Ljava/lang/Object;
.source "PBEParametersGenerator.java"


# instance fields
.field protected iterationCount:I

.field protected password:[B

.field protected salt:[B


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract generateDerivedMacParameters(I)Lorg/spongycastle/crypto/CipherParameters;
.end method

.method public init([B[BI)V
    .locals 0

    .line 34
    iput-object p1, p0, Lorg/spongycastle/crypto/PBEParametersGenerator;->password:[B

    .line 35
    iput-object p2, p0, Lorg/spongycastle/crypto/PBEParametersGenerator;->salt:[B

    .line 36
    iput p3, p0, Lorg/spongycastle/crypto/PBEParametersGenerator;->iterationCount:I

    return-void
.end method
