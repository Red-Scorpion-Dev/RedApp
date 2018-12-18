.class public final synthetic Lorg/briarproject/briar/android/privategroup/reveal/-$$Lambda$RevealContactsControllerImpl$DR1mVDcMbXXha2O9KZbN1kPtp-I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl;

.field private final synthetic f$1:Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;

.field private final synthetic f$2:Lorg/briarproject/bramble/api/sync/GroupId;

.field private final synthetic f$3:Ljava/util/Collection;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;Lorg/briarproject/bramble/api/sync/GroupId;Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/privategroup/reveal/-$$Lambda$RevealContactsControllerImpl$DR1mVDcMbXXha2O9KZbN1kPtp-I;->f$0:Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl;

    iput-object p2, p0, Lorg/briarproject/briar/android/privategroup/reveal/-$$Lambda$RevealContactsControllerImpl$DR1mVDcMbXXha2O9KZbN1kPtp-I;->f$1:Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;

    iput-object p3, p0, Lorg/briarproject/briar/android/privategroup/reveal/-$$Lambda$RevealContactsControllerImpl$DR1mVDcMbXXha2O9KZbN1kPtp-I;->f$2:Lorg/briarproject/bramble/api/sync/GroupId;

    iput-object p4, p0, Lorg/briarproject/briar/android/privategroup/reveal/-$$Lambda$RevealContactsControllerImpl$DR1mVDcMbXXha2O9KZbN1kPtp-I;->f$3:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/reveal/-$$Lambda$RevealContactsControllerImpl$DR1mVDcMbXXha2O9KZbN1kPtp-I;->f$0:Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl;

    iget-object v1, p0, Lorg/briarproject/briar/android/privategroup/reveal/-$$Lambda$RevealContactsControllerImpl$DR1mVDcMbXXha2O9KZbN1kPtp-I;->f$1:Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;

    iget-object v2, p0, Lorg/briarproject/briar/android/privategroup/reveal/-$$Lambda$RevealContactsControllerImpl$DR1mVDcMbXXha2O9KZbN1kPtp-I;->f$2:Lorg/briarproject/bramble/api/sync/GroupId;

    iget-object v3, p0, Lorg/briarproject/briar/android/privategroup/reveal/-$$Lambda$RevealContactsControllerImpl$DR1mVDcMbXXha2O9KZbN1kPtp-I;->f$3:Ljava/util/Collection;

    invoke-static {v0, v1, v2, v3}, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl;->lambda$loadContacts$0(Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;Lorg/briarproject/bramble/api/sync/GroupId;Ljava/util/Collection;)V

    return-void
.end method
