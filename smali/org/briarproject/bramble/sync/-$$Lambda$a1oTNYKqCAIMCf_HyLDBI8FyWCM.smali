.class public final synthetic Lorg/briarproject/bramble/sync/-$$Lambda$a1oTNYKqCAIMCf_HyLDBI8FyWCM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/briarproject/bramble/api/db/DbCallable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/bramble/api/db/DatabaseComponent;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/sync/-$$Lambda$a1oTNYKqCAIMCf_HyLDBI8FyWCM;->f$0:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    return-void
.end method


# virtual methods
.method public final call(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/briarproject/bramble/sync/-$$Lambda$a1oTNYKqCAIMCf_HyLDBI8FyWCM;->f$0:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v0, p1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getPendingMessages(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method
