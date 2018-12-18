.class public final synthetic Lorg/briarproject/briar/android/contactselection/-$$Lambda$ContactSelectorControllerImpl$YImVDGbqrDzhKFXJeUh9cO3Xi0k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/contactselection/ContactSelectorControllerImpl;

.field private final synthetic f$1:Ljava/util/Collection;

.field private final synthetic f$2:Lorg/briarproject/bramble/api/sync/GroupId;

.field private final synthetic f$3:Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/contactselection/ContactSelectorControllerImpl;Ljava/util/Collection;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/contactselection/-$$Lambda$ContactSelectorControllerImpl$YImVDGbqrDzhKFXJeUh9cO3Xi0k;->f$0:Lorg/briarproject/briar/android/contactselection/ContactSelectorControllerImpl;

    iput-object p2, p0, Lorg/briarproject/briar/android/contactselection/-$$Lambda$ContactSelectorControllerImpl$YImVDGbqrDzhKFXJeUh9cO3Xi0k;->f$1:Ljava/util/Collection;

    iput-object p3, p0, Lorg/briarproject/briar/android/contactselection/-$$Lambda$ContactSelectorControllerImpl$YImVDGbqrDzhKFXJeUh9cO3Xi0k;->f$2:Lorg/briarproject/bramble/api/sync/GroupId;

    iput-object p4, p0, Lorg/briarproject/briar/android/contactselection/-$$Lambda$ContactSelectorControllerImpl$YImVDGbqrDzhKFXJeUh9cO3Xi0k;->f$3:Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/briarproject/briar/android/contactselection/-$$Lambda$ContactSelectorControllerImpl$YImVDGbqrDzhKFXJeUh9cO3Xi0k;->f$0:Lorg/briarproject/briar/android/contactselection/ContactSelectorControllerImpl;

    iget-object v1, p0, Lorg/briarproject/briar/android/contactselection/-$$Lambda$ContactSelectorControllerImpl$YImVDGbqrDzhKFXJeUh9cO3Xi0k;->f$1:Ljava/util/Collection;

    iget-object v2, p0, Lorg/briarproject/briar/android/contactselection/-$$Lambda$ContactSelectorControllerImpl$YImVDGbqrDzhKFXJeUh9cO3Xi0k;->f$2:Lorg/briarproject/bramble/api/sync/GroupId;

    iget-object v3, p0, Lorg/briarproject/briar/android/contactselection/-$$Lambda$ContactSelectorControllerImpl$YImVDGbqrDzhKFXJeUh9cO3Xi0k;->f$3:Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;

    invoke-static {v0, v1, v2, v3}, Lorg/briarproject/briar/android/contactselection/ContactSelectorControllerImpl;->lambda$loadContacts$0(Lorg/briarproject/briar/android/contactselection/ContactSelectorControllerImpl;Ljava/util/Collection;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    return-void
.end method
