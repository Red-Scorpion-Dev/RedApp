.class public Lorg/briarproject/bramble/api/keyagreement/event/KeyAgreementListeningEvent;
.super Lorg/briarproject/bramble/api/event/Event;
.source "KeyAgreementListeningEvent.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final localPayload:Lorg/briarproject/bramble/api/keyagreement/Payload;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/keyagreement/Payload;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lorg/briarproject/bramble/api/event/Event;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/briarproject/bramble/api/keyagreement/event/KeyAgreementListeningEvent;->localPayload:Lorg/briarproject/bramble/api/keyagreement/Payload;

    return-void
.end method


# virtual methods
.method public getLocalPayload()Lorg/briarproject/bramble/api/keyagreement/Payload;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/briarproject/bramble/api/keyagreement/event/KeyAgreementListeningEvent;->localPayload:Lorg/briarproject/bramble/api/keyagreement/Payload;

    return-object v0
.end method
