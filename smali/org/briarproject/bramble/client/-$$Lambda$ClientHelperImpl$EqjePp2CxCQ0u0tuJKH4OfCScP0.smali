.class public final synthetic Lorg/briarproject/bramble/client/-$$Lambda$ClientHelperImpl$EqjePp2CxCQ0u0tuJKH4OfCScP0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/briarproject/bramble/api/db/DbRunnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/bramble/client/ClientHelperImpl;

.field private final synthetic f$1:Lorg/briarproject/bramble/api/sync/GroupId;

.field private final synthetic f$2:Lorg/briarproject/bramble/api/data/BdfDictionary;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/bramble/client/ClientHelperImpl;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/client/-$$Lambda$ClientHelperImpl$EqjePp2CxCQ0u0tuJKH4OfCScP0;->f$0:Lorg/briarproject/bramble/client/ClientHelperImpl;

    iput-object p2, p0, Lorg/briarproject/bramble/client/-$$Lambda$ClientHelperImpl$EqjePp2CxCQ0u0tuJKH4OfCScP0;->f$1:Lorg/briarproject/bramble/api/sync/GroupId;

    iput-object p3, p0, Lorg/briarproject/bramble/client/-$$Lambda$ClientHelperImpl$EqjePp2CxCQ0u0tuJKH4OfCScP0;->f$2:Lorg/briarproject/bramble/api/data/BdfDictionary;

    return-void
.end method


# virtual methods
.method public final run(Lorg/briarproject/bramble/api/db/Transaction;)V
    .locals 3

    iget-object v0, p0, Lorg/briarproject/bramble/client/-$$Lambda$ClientHelperImpl$EqjePp2CxCQ0u0tuJKH4OfCScP0;->f$0:Lorg/briarproject/bramble/client/ClientHelperImpl;

    iget-object v1, p0, Lorg/briarproject/bramble/client/-$$Lambda$ClientHelperImpl$EqjePp2CxCQ0u0tuJKH4OfCScP0;->f$1:Lorg/briarproject/bramble/api/sync/GroupId;

    iget-object v2, p0, Lorg/briarproject/bramble/client/-$$Lambda$ClientHelperImpl$EqjePp2CxCQ0u0tuJKH4OfCScP0;->f$2:Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-static {v0, v1, v2, p1}, Lorg/briarproject/bramble/client/ClientHelperImpl;->lambda$mergeGroupMetadata$7(Lorg/briarproject/bramble/client/ClientHelperImpl;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;Lorg/briarproject/bramble/api/db/Transaction;)V

    return-void
.end method
