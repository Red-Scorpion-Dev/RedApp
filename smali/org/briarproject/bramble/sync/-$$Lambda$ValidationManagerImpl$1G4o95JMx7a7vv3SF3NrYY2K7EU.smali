.class public final synthetic Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$1G4o95JMx7a7vv3SF3NrYY2K7EU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/bramble/sync/ValidationManagerImpl;

.field private final synthetic f$1:Lorg/briarproject/bramble/api/sync/Message;

.field private final synthetic f$2:Lorg/briarproject/bramble/api/sync/Group;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/bramble/sync/ValidationManagerImpl;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/Group;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$1G4o95JMx7a7vv3SF3NrYY2K7EU;->f$0:Lorg/briarproject/bramble/sync/ValidationManagerImpl;

    iput-object p2, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$1G4o95JMx7a7vv3SF3NrYY2K7EU;->f$1:Lorg/briarproject/bramble/api/sync/Message;

    iput-object p3, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$1G4o95JMx7a7vv3SF3NrYY2K7EU;->f$2:Lorg/briarproject/bramble/api/sync/Group;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$1G4o95JMx7a7vv3SF3NrYY2K7EU;->f$0:Lorg/briarproject/bramble/sync/ValidationManagerImpl;

    iget-object v1, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$1G4o95JMx7a7vv3SF3NrYY2K7EU;->f$1:Lorg/briarproject/bramble/api/sync/Message;

    iget-object v2, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$1G4o95JMx7a7vv3SF3NrYY2K7EU;->f$2:Lorg/briarproject/bramble/api/sync/Group;

    invoke-static {v0, v1, v2}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->lambda$validateMessageAsync$4(Lorg/briarproject/bramble/sync/ValidationManagerImpl;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/Group;)V

    return-void
.end method
