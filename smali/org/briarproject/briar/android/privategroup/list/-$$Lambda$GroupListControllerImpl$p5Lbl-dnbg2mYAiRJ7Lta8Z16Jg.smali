.class public final synthetic Lorg/briarproject/briar/android/privategroup/list/-$$Lambda$GroupListControllerImpl$p5Lbl-dnbg2mYAiRJ7Lta8Z16Jg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;

.field private final synthetic f$1:Lorg/briarproject/bramble/api/sync/GroupId;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;Lorg/briarproject/bramble/api/sync/GroupId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/privategroup/list/-$$Lambda$GroupListControllerImpl$p5Lbl-dnbg2mYAiRJ7Lta8Z16Jg;->f$0:Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;

    iput-object p2, p0, Lorg/briarproject/briar/android/privategroup/list/-$$Lambda$GroupListControllerImpl$p5Lbl-dnbg2mYAiRJ7Lta8Z16Jg;->f$1:Lorg/briarproject/bramble/api/sync/GroupId;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/-$$Lambda$GroupListControllerImpl$p5Lbl-dnbg2mYAiRJ7Lta8Z16Jg;->f$0:Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;

    iget-object v1, p0, Lorg/briarproject/briar/android/privategroup/list/-$$Lambda$GroupListControllerImpl$p5Lbl-dnbg2mYAiRJ7Lta8Z16Jg;->f$1:Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-static {v0, v1}, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;->lambda$onGroupRemoved$3(Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;Lorg/briarproject/bramble/api/sync/GroupId;)V

    return-void
.end method
