.class public Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;
.super Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;
.source "ContactExchangeActivity.java"

# interfaces
.implements Lorg/briarproject/bramble/api/contact/ContactExchangeListener;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field volatile contactExchangeTask:Lorg/briarproject/bramble/api/contact/ContactExchangeTask;

.field volatile identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;

    .line 34
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;-><init>()V

    return-void
.end method

.method public static synthetic lambda$contactExchangeFailed$3(Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;)V
    .locals 1

    const v0, 0x7f110073

    .line 100
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;->showErrorFragment(I)V

    return-void
.end method

.method public static synthetic lambda$contactExchangeSucceeded$1(Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;Lorg/briarproject/bramble/api/identity/Author;)V
    .locals 4

    .line 76
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/identity/Author;->getName()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f110077

    .line 77
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 78
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 79
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 80
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 81
    invoke-virtual {p0}, Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;->supportFinishAfterTransition()V

    return-void
.end method

.method public static synthetic lambda$duplicateContact$2(Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;Lorg/briarproject/bramble/api/identity/Author;)V
    .locals 4

    .line 88
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/identity/Author;->getName()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f110078

    .line 89
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 90
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 91
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 92
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 93
    invoke-virtual {p0}, Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;->finish()V

    return-void
.end method

.method public static synthetic lambda$startContactExchange$0(Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;Lorg/briarproject/bramble/api/keyagreement/KeyAgreementResult;)V
    .locals 8

    .line 58
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;->identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/identity/IdentityManager;->getLocalAuthor()Lorg/briarproject/bramble/api/identity/LocalAuthor;

    move-result-object v3
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    iget-object v1, p0, Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;->contactExchangeTask:Lorg/briarproject/bramble/api/contact/ContactExchangeTask;

    .line 67
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/keyagreement/KeyAgreementResult;->getMasterKey()Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v4

    .line 68
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/keyagreement/KeyAgreementResult;->getConnection()Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;

    move-result-object v5

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/keyagreement/KeyAgreementResult;->getTransportId()Lorg/briarproject/bramble/api/plugin/TransportId;

    move-result-object v6

    .line 69
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/keyagreement/KeyAgreementResult;->wasAlice()Z

    move-result v7

    move-object v2, p0

    .line 66
    invoke-interface/range {v1 .. v7}, Lorg/briarproject/bramble/api/contact/ContactExchangeTask;->startExchange(Lorg/briarproject/bramble/api/contact/ContactExchangeListener;Lorg/briarproject/bramble/api/identity/LocalAuthor;Lorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;Lorg/briarproject/bramble/api/plugin/TransportId;Z)V

    return-void

    :catch_0
    move-exception p1

    .line 60
    sget-object v0, Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 61
    invoke-virtual {p0}, Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;->contactExchangeFailed()V

    return-void
.end method

.method private startContactExchange(Lorg/briarproject/bramble/api/keyagreement/KeyAgreementResult;)V
    .locals 1

    .line 54
    new-instance v0, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$ContactExchangeActivity$fyog59L3yYwzJYBvp0hzYrpHYRo;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$ContactExchangeActivity$fyog59L3yYwzJYBvp0hzYrpHYRo;-><init>(Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;Lorg/briarproject/bramble/api/keyagreement/KeyAgreementResult;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public contactExchangeFailed()V
    .locals 1

    .line 99
    new-instance v0, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$ContactExchangeActivity$KD0bSz3PVca9YxrNDLIK7VeBNyI;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$ContactExchangeActivity$KD0bSz3PVca9YxrNDLIK7VeBNyI;-><init>(Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method

.method public contactExchangeSucceeded(Lorg/briarproject/bramble/api/identity/Author;)V
    .locals 1

    .line 75
    new-instance v0, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$ContactExchangeActivity$8KDKISuO-xZuK4xkPs6ht2P3Q6Y;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$ContactExchangeActivity$8KDKISuO-xZuK4xkPs6ht2P3Q6Y;-><init>(Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;Lorg/briarproject/bramble/api/identity/Author;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method

.method public duplicateContact(Lorg/briarproject/bramble/api/identity/Author;)V
    .locals 1

    .line 87
    new-instance v0, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$ContactExchangeActivity$Puz4dxLg-DwFSBawekQN1FaryV8;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$ContactExchangeActivity$Puz4dxLg-DwFSBawekQN1FaryV8;-><init>(Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;Lorg/briarproject/bramble/api/identity/Author;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method

.method public injectActivity(Lorg/briarproject/briar/android/activity/ActivityComponent;)V
    .locals 0

    .line 44
    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/activity/ActivityComponent;->inject(Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;)V

    return-void
.end method

.method public keyAgreementAborted(Z)V
    .locals 0

    const p1, 0x7f110073

    .line 125
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;->showErrorFragment(I)V

    return-void
.end method

.method public keyAgreementFailed()V
    .locals 1

    const v0, 0x7f110073

    .line 107
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;->showErrorFragment(I)V

    return-void
.end method

.method public keyAgreementFinished(Lorg/briarproject/bramble/api/keyagreement/KeyAgreementResult;)Ljava/lang/String;
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;->startContactExchange(Lorg/briarproject/bramble/api/keyagreement/KeyAgreementResult;)V

    const p1, 0x7f11009e

    .line 132
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public keyAgreementStarted()Ljava/lang/String;
    .locals 1

    const v0, 0x7f11002e

    .line 119
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public keyAgreementWaiting()Ljava/lang/String;
    .locals 1

    const v0, 0x7f1101d8

    .line 113
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const v0, 0x7f110029

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    return-void
.end method
