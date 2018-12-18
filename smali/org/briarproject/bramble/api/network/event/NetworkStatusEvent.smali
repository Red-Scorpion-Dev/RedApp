.class public Lorg/briarproject/bramble/api/network/event/NetworkStatusEvent;
.super Lorg/briarproject/bramble/api/event/Event;
.source "NetworkStatusEvent.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final status:Lorg/briarproject/bramble/api/network/NetworkStatus;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/network/NetworkStatus;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lorg/briarproject/bramble/api/event/Event;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/briarproject/bramble/api/network/event/NetworkStatusEvent;->status:Lorg/briarproject/bramble/api/network/NetworkStatus;

    return-void
.end method


# virtual methods
.method public getStatus()Lorg/briarproject/bramble/api/network/NetworkStatus;
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/briarproject/bramble/api/network/event/NetworkStatusEvent;->status:Lorg/briarproject/bramble/api/network/NetworkStatus;

    return-object v0
.end method
