.class public final synthetic Lorg/briarproject/bramble/transport/-$$Lambda$KeyManagerImpl$EgmjW5Y1PEkQKFoZhjQTH5kDQGs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/briarproject/bramble/api/db/NullableDbCallable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/bramble/transport/TransportKeyManager;

.field private final synthetic f$1:Lorg/briarproject/bramble/api/contact/ContactId;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/bramble/transport/TransportKeyManager;Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/transport/-$$Lambda$KeyManagerImpl$EgmjW5Y1PEkQKFoZhjQTH5kDQGs;->f$0:Lorg/briarproject/bramble/transport/TransportKeyManager;

    iput-object p2, p0, Lorg/briarproject/bramble/transport/-$$Lambda$KeyManagerImpl$EgmjW5Y1PEkQKFoZhjQTH5kDQGs;->f$1:Lorg/briarproject/bramble/api/contact/ContactId;

    return-void
.end method


# virtual methods
.method public final call(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/briarproject/bramble/transport/-$$Lambda$KeyManagerImpl$EgmjW5Y1PEkQKFoZhjQTH5kDQGs;->f$0:Lorg/briarproject/bramble/transport/TransportKeyManager;

    iget-object v1, p0, Lorg/briarproject/bramble/transport/-$$Lambda$KeyManagerImpl$EgmjW5Y1PEkQKFoZhjQTH5kDQGs;->f$1:Lorg/briarproject/bramble/api/contact/ContactId;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/transport/KeyManagerImpl;->lambda$getStreamContext$1(Lorg/briarproject/bramble/transport/TransportKeyManager;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/db/Transaction;)Lorg/briarproject/bramble/api/transport/StreamContext;

    move-result-object p1

    return-object p1
.end method
