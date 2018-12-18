.class public final synthetic Lorg/briarproject/briar/android/privategroup/creation/-$$Lambda$CreateGroupControllerImpl$KVpcUcluhGM1ObPmUuj-KJs8itc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;

.field private final synthetic f$1:Ljava/util/Collection;

.field private final synthetic f$2:Lorg/briarproject/bramble/api/sync/GroupId;

.field private final synthetic f$3:Lorg/briarproject/bramble/api/identity/LocalAuthor;

.field private final synthetic f$4:Ljava/lang/String;

.field private final synthetic f$5:Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;Ljava/util/Collection;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/identity/LocalAuthor;Ljava/lang/String;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/privategroup/creation/-$$Lambda$CreateGroupControllerImpl$KVpcUcluhGM1ObPmUuj-KJs8itc;->f$0:Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;

    iput-object p2, p0, Lorg/briarproject/briar/android/privategroup/creation/-$$Lambda$CreateGroupControllerImpl$KVpcUcluhGM1ObPmUuj-KJs8itc;->f$1:Ljava/util/Collection;

    iput-object p3, p0, Lorg/briarproject/briar/android/privategroup/creation/-$$Lambda$CreateGroupControllerImpl$KVpcUcluhGM1ObPmUuj-KJs8itc;->f$2:Lorg/briarproject/bramble/api/sync/GroupId;

    iput-object p4, p0, Lorg/briarproject/briar/android/privategroup/creation/-$$Lambda$CreateGroupControllerImpl$KVpcUcluhGM1ObPmUuj-KJs8itc;->f$3:Lorg/briarproject/bramble/api/identity/LocalAuthor;

    iput-object p5, p0, Lorg/briarproject/briar/android/privategroup/creation/-$$Lambda$CreateGroupControllerImpl$KVpcUcluhGM1ObPmUuj-KJs8itc;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lorg/briarproject/briar/android/privategroup/creation/-$$Lambda$CreateGroupControllerImpl$KVpcUcluhGM1ObPmUuj-KJs8itc;->f$5:Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/creation/-$$Lambda$CreateGroupControllerImpl$KVpcUcluhGM1ObPmUuj-KJs8itc;->f$0:Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;

    iget-object v1, p0, Lorg/briarproject/briar/android/privategroup/creation/-$$Lambda$CreateGroupControllerImpl$KVpcUcluhGM1ObPmUuj-KJs8itc;->f$1:Ljava/util/Collection;

    iget-object v2, p0, Lorg/briarproject/briar/android/privategroup/creation/-$$Lambda$CreateGroupControllerImpl$KVpcUcluhGM1ObPmUuj-KJs8itc;->f$2:Lorg/briarproject/bramble/api/sync/GroupId;

    iget-object v3, p0, Lorg/briarproject/briar/android/privategroup/creation/-$$Lambda$CreateGroupControllerImpl$KVpcUcluhGM1ObPmUuj-KJs8itc;->f$3:Lorg/briarproject/bramble/api/identity/LocalAuthor;

    iget-object v4, p0, Lorg/briarproject/briar/android/privategroup/creation/-$$Lambda$CreateGroupControllerImpl$KVpcUcluhGM1ObPmUuj-KJs8itc;->f$4:Ljava/lang/String;

    iget-object v5, p0, Lorg/briarproject/briar/android/privategroup/creation/-$$Lambda$CreateGroupControllerImpl$KVpcUcluhGM1ObPmUuj-KJs8itc;->f$5:Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;

    invoke-static/range {v0 .. v5}, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;->lambda$signInvitations$4(Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;Ljava/util/Collection;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/identity/LocalAuthor;Ljava/lang/String;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    return-void
.end method
