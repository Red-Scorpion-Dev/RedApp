.class public final Lorg/briarproject/briar/android/activity/ActivityModule_ProvideBaseActivityFactory;
.super Ljava/lang/Object;
.source "ActivityModule_ProvideBaseActivityFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/android/activity/BaseActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lorg/briarproject/briar/android/activity/ActivityModule;


# direct methods
.method public constructor <init>(Lorg/briarproject/briar/android/activity/ActivityModule;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/briarproject/briar/android/activity/ActivityModule_ProvideBaseActivityFactory;->module:Lorg/briarproject/briar/android/activity/ActivityModule;

    return-void
.end method

.method public static create(Lorg/briarproject/briar/android/activity/ActivityModule;)Lorg/briarproject/briar/android/activity/ActivityModule_ProvideBaseActivityFactory;
    .locals 1

    .line 28
    new-instance v0, Lorg/briarproject/briar/android/activity/ActivityModule_ProvideBaseActivityFactory;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/activity/ActivityModule_ProvideBaseActivityFactory;-><init>(Lorg/briarproject/briar/android/activity/ActivityModule;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/briar/android/activity/ActivityModule;)Lorg/briarproject/briar/android/activity/BaseActivity;
    .locals 0

    .line 24
    invoke-static {p0}, Lorg/briarproject/briar/android/activity/ActivityModule_ProvideBaseActivityFactory;->proxyProvideBaseActivity(Lorg/briarproject/briar/android/activity/ActivityModule;)Lorg/briarproject/briar/android/activity/BaseActivity;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideBaseActivity(Lorg/briarproject/briar/android/activity/ActivityModule;)Lorg/briarproject/briar/android/activity/BaseActivity;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lorg/briarproject/briar/android/activity/ActivityModule;->provideBaseActivity()Lorg/briarproject/briar/android/activity/BaseActivity;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 32
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/android/activity/BaseActivity;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lorg/briarproject/briar/android/activity/ActivityModule_ProvideBaseActivityFactory;->get()Lorg/briarproject/briar/android/activity/BaseActivity;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/android/activity/BaseActivity;
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/ActivityModule_ProvideBaseActivityFactory;->module:Lorg/briarproject/briar/android/activity/ActivityModule;

    invoke-static {v0}, Lorg/briarproject/briar/android/activity/ActivityModule_ProvideBaseActivityFactory;->provideInstance(Lorg/briarproject/briar/android/activity/ActivityModule;)Lorg/briarproject/briar/android/activity/BaseActivity;

    move-result-object v0

    return-object v0
.end method
