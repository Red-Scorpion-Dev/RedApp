.class public Lorg/briarproject/briar/api/messaging/PrivateMessage;
.super Ljava/lang/Object;
.source "PrivateMessage.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final message:Lorg/briarproject/bramble/api/sync/Message;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/sync/Message;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/briarproject/briar/api/messaging/PrivateMessage;->message:Lorg/briarproject/bramble/api/sync/Message;

    return-void
.end method


# virtual methods
.method public getMessage()Lorg/briarproject/bramble/api/sync/Message;
    .locals 1

    .line 19
    iget-object v0, p0, Lorg/briarproject/briar/api/messaging/PrivateMessage;->message:Lorg/briarproject/bramble/api/sync/Message;

    return-object v0
.end method
