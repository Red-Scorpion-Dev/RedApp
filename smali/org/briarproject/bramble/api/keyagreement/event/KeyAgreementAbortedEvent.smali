.class public Lorg/briarproject/bramble/api/keyagreement/event/KeyAgreementAbortedEvent;
.super Lorg/briarproject/bramble/api/event/Event;
.source "KeyAgreementAbortedEvent.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final remoteAborted:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lorg/briarproject/bramble/api/event/Event;-><init>()V

    .line 18
    iput-boolean p1, p0, Lorg/briarproject/bramble/api/keyagreement/event/KeyAgreementAbortedEvent;->remoteAborted:Z

    return-void
.end method


# virtual methods
.method public didRemoteAbort()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lorg/briarproject/bramble/api/keyagreement/event/KeyAgreementAbortedEvent;->remoteAborted:Z

    return v0
.end method
