.class public Lorg/briarproject/bramble/api/keyagreement/event/KeyAgreementFinishedEvent;
.super Lorg/briarproject/bramble/api/event/Event;
.source "KeyAgreementFinishedEvent.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final result:Lorg/briarproject/bramble/api/keyagreement/KeyAgreementResult;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/keyagreement/KeyAgreementResult;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lorg/briarproject/bramble/api/event/Event;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/briarproject/bramble/api/keyagreement/event/KeyAgreementFinishedEvent;->result:Lorg/briarproject/bramble/api/keyagreement/KeyAgreementResult;

    return-void
.end method


# virtual methods
.method public getResult()Lorg/briarproject/bramble/api/keyagreement/KeyAgreementResult;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/briarproject/bramble/api/keyagreement/event/KeyAgreementFinishedEvent;->result:Lorg/briarproject/bramble/api/keyagreement/KeyAgreementResult;

    return-object v0
.end method
