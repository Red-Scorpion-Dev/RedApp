.class public final Lorg/briarproject/briar/android/activity/ActivityModule_ProvideActivityFactory;
.super Ljava/lang/Object;
.source "ActivityModule_ProvideActivityFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lorg/briarproject/briar/android/activity/ActivityModule;


# direct methods
.method public constructor <init>(Lorg/briarproject/briar/android/activity/ActivityModule;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/briarproject/briar/android/activity/ActivityModule_ProvideActivityFactory;->module:Lorg/briarproject/briar/android/activity/ActivityModule;

    return-void
.end method

.method public static create(Lorg/briarproject/briar/android/activity/ActivityModule;)Lorg/briarproject/briar/android/activity/ActivityModule_ProvideActivityFactory;
    .locals 1

    .line 29
    new-instance v0, Lorg/briarproject/briar/android/activity/ActivityModule_ProvideActivityFactory;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/activity/ActivityModule_ProvideActivityFactory;-><init>(Lorg/briarproject/briar/android/activity/ActivityModule;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/briar/android/activity/ActivityModule;)Landroid/app/Activity;
    .locals 0

    .line 25
    invoke-static {p0}, Lorg/briarproject/briar/android/activity/ActivityModule_ProvideActivityFactory;->proxyProvideActivity(Lorg/briarproject/briar/android/activity/ActivityModule;)Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideActivity(Lorg/briarproject/briar/android/activity/ActivityModule;)Landroid/app/Activity;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lorg/briarproject/briar/android/activity/ActivityModule;->provideActivity()Landroid/app/Activity;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 33
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public get()Landroid/app/Activity;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/ActivityModule_ProvideActivityFactory;->module:Lorg/briarproject/briar/android/activity/ActivityModule;

    invoke-static {v0}, Lorg/briarproject/briar/android/activity/ActivityModule_ProvideActivityFactory;->provideInstance(Lorg/briarproject/briar/android/activity/ActivityModule;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lorg/briarproject/briar/android/activity/ActivityModule_ProvideActivityFactory;->get()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method
