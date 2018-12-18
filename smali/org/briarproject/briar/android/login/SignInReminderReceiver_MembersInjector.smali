.class public final Lorg/briarproject/briar/android/login/SignInReminderReceiver_MembersInjector;
.super Ljava/lang/Object;
.source "SignInReminderReceiver_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lorg/briarproject/briar/android/login/SignInReminderReceiver;",
        ">;"
    }
.end annotation


# instance fields
.field private final accountManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/account/AccountManager;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/AndroidNotificationManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/account/AccountManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/AndroidNotificationManager;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/briarproject/briar/android/login/SignInReminderReceiver_MembersInjector;->accountManagerProvider:Ljavax/inject/Provider;

    .line 23
    iput-object p2, p0, Lorg/briarproject/briar/android/login/SignInReminderReceiver_MembersInjector;->notificationManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/account/AccountManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/AndroidNotificationManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lorg/briarproject/briar/android/login/SignInReminderReceiver;",
            ">;"
        }
    .end annotation

    .line 29
    new-instance v0, Lorg/briarproject/briar/android/login/SignInReminderReceiver_MembersInjector;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/login/SignInReminderReceiver_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectAccountManager(Lorg/briarproject/briar/android/login/SignInReminderReceiver;Lorg/briarproject/bramble/api/account/AccountManager;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lorg/briarproject/briar/android/login/SignInReminderReceiver;->accountManager:Lorg/briarproject/bramble/api/account/AccountManager;

    return-void
.end method

.method public static injectNotificationManager(Lorg/briarproject/briar/android/login/SignInReminderReceiver;Lorg/briarproject/briar/api/android/AndroidNotificationManager;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lorg/briarproject/briar/android/login/SignInReminderReceiver;->notificationManager:Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p1, Lorg/briarproject/briar/android/login/SignInReminderReceiver;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/login/SignInReminderReceiver_MembersInjector;->injectMembers(Lorg/briarproject/briar/android/login/SignInReminderReceiver;)V

    return-void
.end method

.method public injectMembers(Lorg/briarproject/briar/android/login/SignInReminderReceiver;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/briarproject/briar/android/login/SignInReminderReceiver_MembersInjector;->accountManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/account/AccountManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/login/SignInReminderReceiver_MembersInjector;->injectAccountManager(Lorg/briarproject/briar/android/login/SignInReminderReceiver;Lorg/briarproject/bramble/api/account/AccountManager;)V

    .line 36
    iget-object v0, p0, Lorg/briarproject/briar/android/login/SignInReminderReceiver_MembersInjector;->notificationManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/login/SignInReminderReceiver_MembersInjector;->injectNotificationManager(Lorg/briarproject/briar/android/login/SignInReminderReceiver;Lorg/briarproject/briar/api/android/AndroidNotificationManager;)V

    return-void
.end method
