.class interface abstract Lorg/briarproject/briar/sharing/ProtocolEngine;
.super Ljava/lang/Object;
.source "ProtocolEngine.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/briarproject/briar/api/sharing/Shareable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract onAbortMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;Lorg/briarproject/briar/sharing/AbortMessage;)Lorg/briarproject/briar/sharing/Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation
.end method

.method public abstract onAcceptAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;)Lorg/briarproject/briar/sharing/Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract onAcceptMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;Lorg/briarproject/briar/sharing/AcceptMessage;)Lorg/briarproject/briar/sharing/Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation
.end method

.method public abstract onDeclineAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;)Lorg/briarproject/briar/sharing/Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract onDeclineMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;Lorg/briarproject/briar/sharing/DeclineMessage;)Lorg/briarproject/briar/sharing/Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation
.end method

.method public abstract onInviteAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;Ljava/lang/String;J)Lorg/briarproject/briar/sharing/Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract onInviteMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;Lorg/briarproject/briar/sharing/InviteMessage;)Lorg/briarproject/briar/sharing/Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "Lorg/briarproject/briar/sharing/Session;",
            "Lorg/briarproject/briar/sharing/InviteMessage<",
            "TS;>;)",
            "Lorg/briarproject/briar/sharing/Session;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation
.end method

.method public abstract onLeaveAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;)Lorg/briarproject/briar/sharing/Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract onLeaveMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;Lorg/briarproject/briar/sharing/LeaveMessage;)Lorg/briarproject/briar/sharing/Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation
.end method
