.class public final Lorg/briarproject/briar/android/StartupFailureActivity_MembersInjector;
.super Ljava/lang/Object;
.source "StartupFailureActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lorg/briarproject/briar/android/StartupFailureActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private final screenFilterMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/ScreenFilterMonitor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/ScreenFilterMonitor;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/briarproject/briar/android/StartupFailureActivity_MembersInjector;->screenFilterMonitorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/ScreenFilterMonitor;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lorg/briarproject/briar/android/StartupFailureActivity;",
            ">;"
        }
    .end annotation

    .line 24
    new-instance v0, Lorg/briarproject/briar/android/StartupFailureActivity_MembersInjector;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/StartupFailureActivity_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p1, Lorg/briarproject/briar/android/StartupFailureActivity;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/StartupFailureActivity_MembersInjector;->injectMembers(Lorg/briarproject/briar/android/StartupFailureActivity;)V

    return-void
.end method

.method public injectMembers(Lorg/briarproject/briar/android/StartupFailureActivity;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/briarproject/briar/android/StartupFailureActivity_MembersInjector;->screenFilterMonitorProvider:Ljavax/inject/Provider;

    .line 30
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    .line 29
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BaseActivity_MembersInjector;->injectScreenFilterMonitor(Lorg/briarproject/briar/android/activity/BaseActivity;Lorg/briarproject/briar/api/android/ScreenFilterMonitor;)V

    return-void
.end method
