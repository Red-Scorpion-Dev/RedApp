.class public final synthetic Lorg/briarproject/bramble/client/-$$Lambda$ClientHelperImpl$YF3PlfYVnTm1hNSNtjOVbNFXh6g;
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

    iput-object p1, p0, Lorg/briarproject/bramble/client/-$$Lambda$ClientHelperImpl$YF3PlfYVnTm1hNSNtjOVbNFXh6g;->f$0:Lorg/briarproject/bramble/client/ClientHelperImpl;

    iput-object p2, p0, Lorg/briarproject/bramble/client/-$$Lambda$ClientHelperImpl$YF3PlfYVnTm1hNSNtjOVbNFXh6g;->f$1:Lorg/briarproject/bramble/api/sync/GroupId;

    return-void
.end method


# virtual methods
.method public final call(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/briarproject/bramble/client/-$$Lambda$ClientHelperImpl$YF3PlfYVnTm1hNSNtjOVbNFXh6g;->f$0:Lorg/briarproject/bramble/client/ClientHelperImpl;

    iget-object v1, p0, Lorg/briarproject/bramble/client/-$$Lambda$ClientHelperImpl$YF3PlfYVnTm1hNSNtjOVbNFXh6g;->f$1:Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/client/ClientHelperImpl;->lambda$getGroupMetadataAsDictionary$3(Lorg/briarproject/bramble/client/ClientHelperImpl;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/db/Transaction;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p1

    return-object p1
.end method
