.class public final synthetic Lorg/briarproject/bramble/keyagreement/-$$Lambda$XcXNzFcyeDCrudIde3p0lMV8iGQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/bramble/api/keyagreement/KeyAgreementListener;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/bramble/api/keyagreement/KeyAgreementListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/keyagreement/-$$Lambda$XcXNzFcyeDCrudIde3p0lMV8iGQ;->f$0:Lorg/briarproject/bramble/api/keyagreement/KeyAgreementListener;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/briarproject/bramble/keyagreement/-$$Lambda$XcXNzFcyeDCrudIde3p0lMV8iGQ;->f$0:Lorg/briarproject/bramble/api/keyagreement/KeyAgreementListener;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/keyagreement/KeyAgreementListener;->accept()Lorg/briarproject/bramble/api/keyagreement/KeyAgreementConnection;

    move-result-object v0

    return-object v0
.end method
