.class public final synthetic Lorg/briarproject/bramble/properties/-$$Lambda$TransportPropertyManagerImpl$BXt04dkG296YFYu-4pdhcqKcgc0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/briarproject/bramble/api/db/DbRunnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;

.field private final synthetic f$1:Lorg/briarproject/bramble/api/plugin/TransportId;

.field private final synthetic f$2:Lorg/briarproject/bramble/api/properties/TransportProperties;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/properties/TransportProperties;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/properties/-$$Lambda$TransportPropertyManagerImpl$BXt04dkG296YFYu-4pdhcqKcgc0;->f$0:Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;

    iput-object p2, p0, Lorg/briarproject/bramble/properties/-$$Lambda$TransportPropertyManagerImpl$BXt04dkG296YFYu-4pdhcqKcgc0;->f$1:Lorg/briarproject/bramble/api/plugin/TransportId;

    iput-object p3, p0, Lorg/briarproject/bramble/properties/-$$Lambda$TransportPropertyManagerImpl$BXt04dkG296YFYu-4pdhcqKcgc0;->f$2:Lorg/briarproject/bramble/api/properties/TransportProperties;

    return-void
.end method


# virtual methods
.method public final run(Lorg/briarproject/bramble/api/db/Transaction;)V
    .locals 3

    iget-object v0, p0, Lorg/briarproject/bramble/properties/-$$Lambda$TransportPropertyManagerImpl$BXt04dkG296YFYu-4pdhcqKcgc0;->f$0:Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;

    iget-object v1, p0, Lorg/briarproject/bramble/properties/-$$Lambda$TransportPropertyManagerImpl$BXt04dkG296YFYu-4pdhcqKcgc0;->f$1:Lorg/briarproject/bramble/api/plugin/TransportId;

    iget-object v2, p0, Lorg/briarproject/bramble/properties/-$$Lambda$TransportPropertyManagerImpl$BXt04dkG296YFYu-4pdhcqKcgc0;->f$2:Lorg/briarproject/bramble/api/properties/TransportProperties;

    invoke-static {v0, v1, v2, p1}, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->lambda$mergeLocalProperties$3(Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/properties/TransportProperties;Lorg/briarproject/bramble/api/db/Transaction;)V

    return-void
.end method
