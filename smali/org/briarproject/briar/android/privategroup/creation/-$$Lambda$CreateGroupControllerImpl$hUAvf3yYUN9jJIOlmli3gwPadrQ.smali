.class public final synthetic Lorg/briarproject/briar/android/privategroup/creation/-$$Lambda$CreateGroupControllerImpl$hUAvf3yYUN9jJIOlmli3gwPadrQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Lorg/briarproject/bramble/api/identity/LocalAuthor;

.field private final synthetic f$3:Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;Ljava/lang/String;Lorg/briarproject/bramble/api/identity/LocalAuthor;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/privategroup/creation/-$$Lambda$CreateGroupControllerImpl$hUAvf3yYUN9jJIOlmli3gwPadrQ;->f$0:Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;

    iput-object p2, p0, Lorg/briarproject/briar/android/privategroup/creation/-$$Lambda$CreateGroupControllerImpl$hUAvf3yYUN9jJIOlmli3gwPadrQ;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/briarproject/briar/android/privategroup/creation/-$$Lambda$CreateGroupControllerImpl$hUAvf3yYUN9jJIOlmli3gwPadrQ;->f$2:Lorg/briarproject/bramble/api/identity/LocalAuthor;

    iput-object p4, p0, Lorg/briarproject/briar/android/privategroup/creation/-$$Lambda$CreateGroupControllerImpl$hUAvf3yYUN9jJIOlmli3gwPadrQ;->f$3:Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/creation/-$$Lambda$CreateGroupControllerImpl$hUAvf3yYUN9jJIOlmli3gwPadrQ;->f$0:Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;

    iget-object v1, p0, Lorg/briarproject/briar/android/privategroup/creation/-$$Lambda$CreateGroupControllerImpl$hUAvf3yYUN9jJIOlmli3gwPadrQ;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/briarproject/briar/android/privategroup/creation/-$$Lambda$CreateGroupControllerImpl$hUAvf3yYUN9jJIOlmli3gwPadrQ;->f$2:Lorg/briarproject/bramble/api/identity/LocalAuthor;

    iget-object v3, p0, Lorg/briarproject/briar/android/privategroup/creation/-$$Lambda$CreateGroupControllerImpl$hUAvf3yYUN9jJIOlmli3gwPadrQ;->f$3:Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;

    invoke-static {v0, v1, v2, v3}, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;->lambda$createGroupAndMessages$1(Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;Ljava/lang/String;Lorg/briarproject/bramble/api/identity/LocalAuthor;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    return-void
.end method
