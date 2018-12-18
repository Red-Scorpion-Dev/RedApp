.class public final synthetic Lorg/briarproject/bramble/client/-$$Lambda$ClientHelperImpl$hcCSUDF8T_pipPSV4dmdNHSsMOc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/briarproject/bramble/api/db/DbRunnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/bramble/client/ClientHelperImpl;

.field private final synthetic f$1:Lorg/briarproject/bramble/api/sync/Message;

.field private final synthetic f$2:Lorg/briarproject/bramble/api/data/BdfDictionary;

.field private final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/bramble/client/ClientHelperImpl;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfDictionary;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/client/-$$Lambda$ClientHelperImpl$hcCSUDF8T_pipPSV4dmdNHSsMOc;->f$0:Lorg/briarproject/bramble/client/ClientHelperImpl;

    iput-object p2, p0, Lorg/briarproject/bramble/client/-$$Lambda$ClientHelperImpl$hcCSUDF8T_pipPSV4dmdNHSsMOc;->f$1:Lorg/briarproject/bramble/api/sync/Message;

    iput-object p3, p0, Lorg/briarproject/bramble/client/-$$Lambda$ClientHelperImpl$hcCSUDF8T_pipPSV4dmdNHSsMOc;->f$2:Lorg/briarproject/bramble/api/data/BdfDictionary;

    iput-boolean p4, p0, Lorg/briarproject/bramble/client/-$$Lambda$ClientHelperImpl$hcCSUDF8T_pipPSV4dmdNHSsMOc;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run(Lorg/briarproject/bramble/api/db/Transaction;)V
    .locals 4

    iget-object v0, p0, Lorg/briarproject/bramble/client/-$$Lambda$ClientHelperImpl$hcCSUDF8T_pipPSV4dmdNHSsMOc;->f$0:Lorg/briarproject/bramble/client/ClientHelperImpl;

    iget-object v1, p0, Lorg/briarproject/bramble/client/-$$Lambda$ClientHelperImpl$hcCSUDF8T_pipPSV4dmdNHSsMOc;->f$1:Lorg/briarproject/bramble/api/sync/Message;

    iget-object v2, p0, Lorg/briarproject/bramble/client/-$$Lambda$ClientHelperImpl$hcCSUDF8T_pipPSV4dmdNHSsMOc;->f$2:Lorg/briarproject/bramble/api/data/BdfDictionary;

    iget-boolean v3, p0, Lorg/briarproject/bramble/client/-$$Lambda$ClientHelperImpl$hcCSUDF8T_pipPSV4dmdNHSsMOc;->f$3:Z

    invoke-static {v0, v1, v2, v3, p1}, Lorg/briarproject/bramble/client/ClientHelperImpl;->lambda$addLocalMessage$0(Lorg/briarproject/bramble/client/ClientHelperImpl;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfDictionary;ZLorg/briarproject/bramble/api/db/Transaction;)V

    return-void
.end method
