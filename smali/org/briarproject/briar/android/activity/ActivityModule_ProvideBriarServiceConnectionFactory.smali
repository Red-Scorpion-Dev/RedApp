.class public final Lorg/briarproject/briar/android/activity/ActivityModule_ProvideBriarServiceConnectionFactory;
.super Ljava/lang/Object;
.source "ActivityModule_ProvideBriarServiceConnectionFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/android/BriarService$BriarServiceConnection;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lorg/briarproject/briar/android/activity/ActivityModule;


# direct methods
.method public constructor <init>(Lorg/briarproject/briar/android/activity/ActivityModule;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/briarproject/briar/android/activity/ActivityModule_ProvideBriarServiceConnectionFactory;->module:Lorg/briarproject/briar/android/activity/ActivityModule;

    return-void
.end method

.method public static create(Lorg/briarproject/briar/android/activity/ActivityModule;)Lorg/briarproject/briar/android/activity/ActivityModule_ProvideBriarServiceConnectionFactory;
    .locals 1

    .line 30
    new-instance v0, Lorg/briarproject/briar/android/activity/ActivityModule_ProvideBriarServiceConnectionFactory;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/activity/ActivityModule_ProvideBriarServiceConnectionFactory;-><init>(Lorg/briarproject/briar/android/activity/ActivityModule;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/briar/android/activity/ActivityModule;)Lorg/briarproject/briar/android/BriarService$BriarServiceConnection;
    .locals 0

    .line 26
    invoke-static {p0}, Lorg/briarproject/briar/android/activity/ActivityModule_ProvideBriarServiceConnectionFactory;->proxyProvideBriarServiceConnection(Lorg/briarproject/briar/android/activity/ActivityModule;)Lorg/briarproject/briar/android/BriarService$BriarServiceConnection;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideBriarServiceConnection(Lorg/briarproject/briar/android/activity/ActivityModule;)Lorg/briarproject/briar/android/BriarService$BriarServiceConnection;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lorg/briarproject/briar/android/activity/ActivityModule;->provideBriarServiceConnection()Lorg/briarproject/briar/android/BriarService$BriarServiceConnection;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 35
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/android/BriarService$BriarServiceConnection;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lorg/briarproject/briar/android/activity/ActivityModule_ProvideBriarServiceConnectionFactory;->get()Lorg/briarproject/briar/android/BriarService$BriarServiceConnection;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/android/BriarService$BriarServiceConnection;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/ActivityModule_ProvideBriarServiceConnectionFactory;->module:Lorg/briarproject/briar/android/activity/ActivityModule;

    invoke-static {v0}, Lorg/briarproject/briar/android/activity/ActivityModule_ProvideBriarServiceConnectionFactory;->provideInstance(Lorg/briarproject/briar/android/activity/ActivityModule;)Lorg/briarproject/briar/android/BriarService$BriarServiceConnection;

    move-result-object v0

    return-object v0
.end method
