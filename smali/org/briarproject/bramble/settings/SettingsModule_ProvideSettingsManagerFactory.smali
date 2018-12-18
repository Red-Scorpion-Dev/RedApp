.class public final Lorg/briarproject/bramble/settings/SettingsModule_ProvideSettingsManagerFactory;
.super Ljava/lang/Object;
.source "SettingsModule_ProvideSettingsManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/api/settings/SettingsManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final dbProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/db/DatabaseComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lorg/briarproject/bramble/settings/SettingsModule;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/settings/SettingsModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/settings/SettingsModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/db/DatabaseComponent;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/briarproject/bramble/settings/SettingsModule_ProvideSettingsManagerFactory;->module:Lorg/briarproject/bramble/settings/SettingsModule;

    .line 23
    iput-object p2, p0, Lorg/briarproject/bramble/settings/SettingsModule_ProvideSettingsManagerFactory;->dbProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/bramble/settings/SettingsModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/settings/SettingsModule_ProvideSettingsManagerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/settings/SettingsModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/db/DatabaseComponent;",
            ">;)",
            "Lorg/briarproject/bramble/settings/SettingsModule_ProvideSettingsManagerFactory;"
        }
    .end annotation

    .line 38
    new-instance v0, Lorg/briarproject/bramble/settings/SettingsModule_ProvideSettingsManagerFactory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/bramble/settings/SettingsModule_ProvideSettingsManagerFactory;-><init>(Lorg/briarproject/bramble/settings/SettingsModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/bramble/settings/SettingsModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/settings/SettingsManager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/settings/SettingsModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/db/DatabaseComponent;",
            ">;)",
            "Lorg/briarproject/bramble/api/settings/SettingsManager;"
        }
    .end annotation

    .line 33
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-static {p0, p1}, Lorg/briarproject/bramble/settings/SettingsModule_ProvideSettingsManagerFactory;->proxyProvideSettingsManager(Lorg/briarproject/bramble/settings/SettingsModule;Lorg/briarproject/bramble/api/db/DatabaseComponent;)Lorg/briarproject/bramble/api/settings/SettingsManager;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideSettingsManager(Lorg/briarproject/bramble/settings/SettingsModule;Lorg/briarproject/bramble/api/db/DatabaseComponent;)Lorg/briarproject/bramble/api/settings/SettingsManager;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/settings/SettingsModule;->provideSettingsManager(Lorg/briarproject/bramble/api/db/DatabaseComponent;)Lorg/briarproject/bramble/api/settings/SettingsManager;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 43
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/settings/SettingsManager;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lorg/briarproject/bramble/settings/SettingsModule_ProvideSettingsManagerFactory;->get()Lorg/briarproject/bramble/api/settings/SettingsManager;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/api/settings/SettingsManager;
    .locals 2

    .line 28
    iget-object v0, p0, Lorg/briarproject/bramble/settings/SettingsModule_ProvideSettingsManagerFactory;->module:Lorg/briarproject/bramble/settings/SettingsModule;

    iget-object v1, p0, Lorg/briarproject/bramble/settings/SettingsModule_ProvideSettingsManagerFactory;->dbProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/bramble/settings/SettingsModule_ProvideSettingsManagerFactory;->provideInstance(Lorg/briarproject/bramble/settings/SettingsModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/settings/SettingsManager;

    move-result-object v0

    return-object v0
.end method
