.class public final synthetic Lorg/briarproject/bramble/properties/-$$Lambda$3u-v27JdSI7gzQOnqcJLdEqq0O0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/briarproject/bramble/api/db/DbCallable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/properties/-$$Lambda$3u-v27JdSI7gzQOnqcJLdEqq0O0;->f$0:Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;

    return-void
.end method


# virtual methods
.method public final call(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/briarproject/bramble/properties/-$$Lambda$3u-v27JdSI7gzQOnqcJLdEqq0O0;->f$0:Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;

    invoke-virtual {v0, p1}, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->getLocalProperties(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
