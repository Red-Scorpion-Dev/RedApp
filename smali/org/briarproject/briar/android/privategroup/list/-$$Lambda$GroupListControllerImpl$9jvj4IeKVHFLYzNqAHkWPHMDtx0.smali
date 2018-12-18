.class public final synthetic Lorg/briarproject/briar/android/privategroup/list/-$$Lambda$GroupListControllerImpl$9jvj4IeKVHFLYzNqAHkWPHMDtx0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;

.field private final synthetic f$1:Lorg/briarproject/bramble/api/sync/GroupId;

.field private final synthetic f$2:Lorg/briarproject/briar/android/controller/handler/ExceptionHandler;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/android/controller/handler/ExceptionHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/privategroup/list/-$$Lambda$GroupListControllerImpl$9jvj4IeKVHFLYzNqAHkWPHMDtx0;->f$0:Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;

    iput-object p2, p0, Lorg/briarproject/briar/android/privategroup/list/-$$Lambda$GroupListControllerImpl$9jvj4IeKVHFLYzNqAHkWPHMDtx0;->f$1:Lorg/briarproject/bramble/api/sync/GroupId;

    iput-object p3, p0, Lorg/briarproject/briar/android/privategroup/list/-$$Lambda$GroupListControllerImpl$9jvj4IeKVHFLYzNqAHkWPHMDtx0;->f$2:Lorg/briarproject/briar/android/controller/handler/ExceptionHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/-$$Lambda$GroupListControllerImpl$9jvj4IeKVHFLYzNqAHkWPHMDtx0;->f$0:Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;

    iget-object v1, p0, Lorg/briarproject/briar/android/privategroup/list/-$$Lambda$GroupListControllerImpl$9jvj4IeKVHFLYzNqAHkWPHMDtx0;->f$1:Lorg/briarproject/bramble/api/sync/GroupId;

    iget-object v2, p0, Lorg/briarproject/briar/android/privategroup/list/-$$Lambda$GroupListControllerImpl$9jvj4IeKVHFLYzNqAHkWPHMDtx0;->f$2:Lorg/briarproject/briar/android/controller/handler/ExceptionHandler;

    invoke-static {v0, v1, v2}, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;->lambda$removeGroup$6(Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/android/controller/handler/ExceptionHandler;)V

    return-void
.end method
