.class interface abstract Lorg/briarproject/briar/introduction/ProtocolEngine;
.super Ljava/lang/Object;
.source "ProtocolEngine.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lorg/briarproject/briar/introduction/Session;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract onAbortMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/Session;Lorg/briarproject/briar/introduction/AbortMessage;)Lorg/briarproject/briar/introduction/Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "TS;",
            "Lorg/briarproject/briar/introduction/AbortMessage;",
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

.method public abstract onAcceptAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/Session;J)Lorg/briarproject/briar/introduction/Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "TS;J)TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract onAcceptMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/Session;Lorg/briarproject/briar/introduction/AcceptMessage;)Lorg/briarproject/briar/introduction/Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "TS;",
            "Lorg/briarproject/briar/introduction/AcceptMessage;",
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

.method public abstract onActivateMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/Session;Lorg/briarproject/briar/introduction/ActivateMessage;)Lorg/briarproject/briar/introduction/Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "TS;",
            "Lorg/briarproject/briar/introduction/ActivateMessage;",
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

.method public abstract onAuthMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/Session;Lorg/briarproject/briar/introduction/AuthMessage;)Lorg/briarproject/briar/introduction/Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "TS;",
            "Lorg/briarproject/briar/introduction/AuthMessage;",
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

.method public abstract onDeclineAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/Session;J)Lorg/briarproject/briar/introduction/Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "TS;J)TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract onDeclineMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/Session;Lorg/briarproject/briar/introduction/DeclineMessage;)Lorg/briarproject/briar/introduction/Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "TS;",
            "Lorg/briarproject/briar/introduction/DeclineMessage;",
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

.method public abstract onRequestAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/Session;Ljava/lang/String;J)Lorg/briarproject/briar/introduction/Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "TS;",
            "Ljava/lang/String;",
            "J)TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract onRequestMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/Session;Lorg/briarproject/briar/introduction/RequestMessage;)Lorg/briarproject/briar/introduction/Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "TS;",
            "Lorg/briarproject/briar/introduction/RequestMessage;",
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
