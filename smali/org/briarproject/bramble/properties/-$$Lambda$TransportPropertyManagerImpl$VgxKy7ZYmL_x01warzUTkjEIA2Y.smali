.class public final synthetic Lorg/briarproject/bramble/properties/-$$Lambda$TransportPropertyManagerImpl$VgxKy7ZYmL_x01warzUTkjEIA2Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/briarproject/bramble/api/db/DbCallable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;

.field private final synthetic f$1:Lorg/briarproject/bramble/api/contact/ContactId;

.field private final synthetic f$2:Lorg/briarproject/bramble/api/plugin/TransportId;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/TransportId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/properties/-$$Lambda$TransportPropertyManagerImpl$VgxKy7ZYmL_x01warzUTkjEIA2Y;->f$0:Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;

    iput-object p2, p0, Lorg/briarproject/bramble/properties/-$$Lambda$TransportPropertyManagerImpl$VgxKy7ZYmL_x01warzUTkjEIA2Y;->f$1:Lorg/briarproject/bramble/api/contact/ContactId;

    iput-object p3, p0, Lorg/briarproject/bramble/properties/-$$Lambda$TransportPropertyManagerImpl$VgxKy7ZYmL_x01warzUTkjEIA2Y;->f$2:Lorg/briarproject/bramble/api/plugin/TransportId;

    return-void
.end method


# virtual methods
.method public final call(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/briarproject/bramble/properties/-$$Lambda$TransportPropertyManagerImpl$VgxKy7ZYmL_x01warzUTkjEIA2Y;->f$0:Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;

    iget-object v1, p0, Lorg/briarproject/bramble/properties/-$$Lambda$TransportPropertyManagerImpl$VgxKy7ZYmL_x01warzUTkjEIA2Y;->f$1:Lorg/briarproject/bramble/api/contact/ContactId;

    iget-object v2, p0, Lorg/briarproject/bramble/properties/-$$Lambda$TransportPropertyManagerImpl$VgxKy7ZYmL_x01warzUTkjEIA2Y;->f$2:Lorg/briarproject/bramble/api/plugin/TransportId;

    invoke-static {v0, v1, v2, p1}, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->lambda$getRemoteProperties$2(Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/db/Transaction;)Lorg/briarproject/bramble/api/properties/TransportProperties;

    move-result-object p1

    return-object p1
.end method
