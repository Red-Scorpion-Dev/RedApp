.class public final Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment_MembersInjector;
.super Ljava/lang/Object;
.source "ScreenFilterDialogFragment_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment;",
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

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment_MembersInjector;->screenFilterMonitorProvider:Ljavax/inject/Provider;

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
            "Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance v0, Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment_MembersInjector;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectScreenFilterMonitor(Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment;Lorg/briarproject/briar/api/android/ScreenFilterMonitor;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment;->screenFilterMonitor:Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment_MembersInjector;->injectMembers(Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment;)V

    return-void
.end method

.method public injectMembers(Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment_MembersInjector;->screenFilterMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment_MembersInjector;->injectScreenFilterMonitor(Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment;Lorg/briarproject/briar/api/android/ScreenFilterMonitor;)V

    return-void
.end method
