.class public final synthetic Lorg/briarproject/briar/android/privategroup/creation/-$$Lambda$CreateGroupControllerImpl$hVxYC3z9o6SmF4IjWB6mmHoHudM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;

.field private final synthetic f$1:Lorg/briarproject/briar/api/privategroup/PrivateGroup;

.field private final synthetic f$2:Lorg/briarproject/briar/api/privategroup/GroupMessage;

.field private final synthetic f$3:Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;Lorg/briarproject/briar/api/privategroup/PrivateGroup;Lorg/briarproject/briar/api/privategroup/GroupMessage;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/privategroup/creation/-$$Lambda$CreateGroupControllerImpl$hVxYC3z9o6SmF4IjWB6mmHoHudM;->f$0:Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;

    iput-object p2, p0, Lorg/briarproject/briar/android/privategroup/creation/-$$Lambda$CreateGroupControllerImpl$hVxYC3z9o6SmF4IjWB6mmHoHudM;->f$1:Lorg/briarproject/briar/api/privategroup/PrivateGroup;

    iput-object p3, p0, Lorg/briarproject/briar/android/privategroup/creation/-$$Lambda$CreateGroupControllerImpl$hVxYC3z9o6SmF4IjWB6mmHoHudM;->f$2:Lorg/briarproject/briar/api/privategroup/GroupMessage;

    iput-object p4, p0, Lorg/briarproject/briar/android/privategroup/creation/-$$Lambda$CreateGroupControllerImpl$hVxYC3z9o6SmF4IjWB6mmHoHudM;->f$3:Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/creation/-$$Lambda$CreateGroupControllerImpl$hVxYC3z9o6SmF4IjWB6mmHoHudM;->f$0:Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;

    iget-object v1, p0, Lorg/briarproject/briar/android/privategroup/creation/-$$Lambda$CreateGroupControllerImpl$hVxYC3z9o6SmF4IjWB6mmHoHudM;->f$1:Lorg/briarproject/briar/api/privategroup/PrivateGroup;

    iget-object v2, p0, Lorg/briarproject/briar/android/privategroup/creation/-$$Lambda$CreateGroupControllerImpl$hVxYC3z9o6SmF4IjWB6mmHoHudM;->f$2:Lorg/briarproject/briar/api/privategroup/GroupMessage;

    iget-object v3, p0, Lorg/briarproject/briar/android/privategroup/creation/-$$Lambda$CreateGroupControllerImpl$hVxYC3z9o6SmF4IjWB6mmHoHudM;->f$3:Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;

    invoke-static {v0, v1, v2, v3}, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;->lambda$storeGroup$2(Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;Lorg/briarproject/briar/api/privategroup/PrivateGroup;Lorg/briarproject/briar/api/privategroup/GroupMessage;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    return-void
.end method
