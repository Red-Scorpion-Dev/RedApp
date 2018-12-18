.class public abstract Lorg/briarproject/bramble/api/keyagreement/KeyAgreementListener;
.super Ljava/lang/Object;
.source "KeyAgreementListener.java"


# instance fields
.field private final descriptor:Lorg/briarproject/bramble/api/data/BdfList;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/data/BdfList;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/briarproject/bramble/api/keyagreement/KeyAgreementListener;->descriptor:Lorg/briarproject/bramble/api/data/BdfList;

    return-void
.end method


# virtual methods
.method public abstract accept()Lorg/briarproject/bramble/api/keyagreement/KeyAgreementConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract close()V
.end method

.method public getDescriptor()Lorg/briarproject/bramble/api/data/BdfList;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/briarproject/bramble/api/keyagreement/KeyAgreementListener;->descriptor:Lorg/briarproject/bramble/api/data/BdfList;

    return-object v0
.end method
