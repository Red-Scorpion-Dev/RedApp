.class public final synthetic Lorg/briarproject/bramble/client/-$$Lambda$ClientHelperImpl$53rPAjC60AxabgUDq2R6guTOmOE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/briarproject/bramble/api/db/DbCallable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/bramble/client/ClientHelperImpl;

.field private final synthetic f$1:Lorg/briarproject/bramble/api/sync/GroupId;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/bramble/client/ClientHelperImpl;Lorg/briarproject/bramble/api/sync/GroupId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/client/-$$Lambda$ClientHelperImpl$53rPAjC60AxabgUDq2R6guTOmOE;->f$0:Lorg/briarproject/bramble/client/ClientHelperImpl;

    iput-object p2, p0, Lorg/briarproject/bramble/client/-$$Lambda$ClientHelperImpl$53rPAjC60AxabgUDq2R6guTOmOE;->f$1:Lorg/briarproject/bramble/api/sync/GroupId;

    return-void
.end method


# virtual methods
.method public final call(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/briarproject/bramble/client/-$$Lambda$ClientHelperImpl$53rPAjC60AxabgUDq2R6guTOmOE;->f$0:Lorg/briarproject/bramble/client/ClientHelperImpl;

    iget-object v1, p0, Lorg/briarproject/bramble/client/-$$Lambda$ClientHelperImpl$53rPAjC60AxabgUDq2R6guTOmOE;->f$1:Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/client/ClientHelperImpl;->lambda$getMessageMetadataAsDictionary$5(Lorg/briarproject/bramble/client/ClientHelperImpl;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/db/Transaction;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
