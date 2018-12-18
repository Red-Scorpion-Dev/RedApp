.class interface abstract Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine;
.super Ljava/lang/Object;
.source "ProtocolEngine.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lorg/briarproject/briar/privategroup/invitation/Session;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract onAbortMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;Lorg/briarproject/briar/privategroup/invitation/AbortMessage;)Lorg/briarproject/briar/privategroup/invitation/Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "TS;",
            "Lorg/briarproject/briar/privategroup/invitation/AbortMessage;",
            ")TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation
.end method

.method public abstract onInviteAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;Ljava/lang/String;J[B)Lorg/briarproject/briar/privategroup/invitation/Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "TS;",
            "Ljava/lang/String;",
            "J[B)TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract onInviteMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;Lorg/briarproject/briar/privategroup/invitation/InviteMessage;)Lorg/briarproject/briar/privategroup/invitation/Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "TS;",
            "Lorg/briarproject/briar/privategroup/invitation/InviteMessage;",
            ")TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation
.end method

.method public abstract onJoinAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;)Lorg/briarproject/briar/privategroup/invitation/Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "TS;)TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract onJoinMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;Lorg/briarproject/briar/privategroup/invitation/JoinMessage;)Lorg/briarproject/briar/privategroup/invitation/Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "TS;",
            "Lorg/briarproject/briar/privategroup/invitation/JoinMessage;",
            ")TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation
.end method

.method public abstract onLeaveAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;)Lorg/briarproject/briar/privategroup/invitation/Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "TS;)TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract onLeaveMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;Lorg/briarproject/briar/privategroup/invitation/LeaveMessage;)Lorg/briarproject/briar/privategroup/invitation/Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "TS;",
            "Lorg/briarproject/briar/privategroup/invitation/LeaveMessage;",
            ")TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation
.end method

.method public abstract onMemberAddedAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;)Lorg/briarproject/briar/privategroup/invitation/Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "TS;)TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method
