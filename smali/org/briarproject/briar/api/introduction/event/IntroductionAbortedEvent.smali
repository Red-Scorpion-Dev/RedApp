.class public Lorg/briarproject/briar/api/introduction/event/IntroductionAbortedEvent;
.super Lorg/briarproject/bramble/api/event/Event;
.source "IntroductionAbortedEvent.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final sessionId:Lorg/briarproject/briar/api/client/SessionId;


# direct methods
.method public constructor <init>(Lorg/briarproject/briar/api/client/SessionId;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lorg/briarproject/bramble/api/event/Event;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/briarproject/briar/api/introduction/event/IntroductionAbortedEvent;->sessionId:Lorg/briarproject/briar/api/client/SessionId;

    return-void
.end method


# virtual methods
.method public getSessionId()Lorg/briarproject/briar/api/client/SessionId;
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/briarproject/briar/api/introduction/event/IntroductionAbortedEvent;->sessionId:Lorg/briarproject/briar/api/client/SessionId;

    return-object v0
.end method
