.class public final Lorg/briarproject/briar/android/AppModule_ProvideSharedPreferencesFactory;
.super Ljava/lang/Object;
.source "AppModule_ProvideSharedPreferencesFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/content/SharedPreferences;",
        ">;"
    }
.end annotation


# instance fields
.field private final appProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lorg/briarproject/briar/android/AppModule;


# direct methods
.method public constructor <init>(Lorg/briarproject/briar/android/AppModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/AppModule;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/briarproject/briar/android/AppModule_ProvideSharedPreferencesFactory;->module:Lorg/briarproject/briar/android/AppModule;

    .line 22
    iput-object p2, p0, Lorg/briarproject/briar/android/AppModule_ProvideSharedPreferencesFactory;->appProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/briar/android/AppModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/AppModule_ProvideSharedPreferencesFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/AppModule;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;)",
            "Lorg/briarproject/briar/android/AppModule_ProvideSharedPreferencesFactory;"
        }
    .end annotation

    .line 37
    new-instance v0, Lorg/briarproject/briar/android/AppModule_ProvideSharedPreferencesFactory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/AppModule_ProvideSharedPreferencesFactory;-><init>(Lorg/briarproject/briar/android/AppModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/briar/android/AppModule;Ljavax/inject/Provider;)Landroid/content/SharedPreferences;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/AppModule;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;)",
            "Landroid/content/SharedPreferences;"
        }
    .end annotation

    .line 32
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    invoke-static {p0, p1}, Lorg/briarproject/briar/android/AppModule_ProvideSharedPreferencesFactory;->proxyProvideSharedPreferences(Lorg/briarproject/briar/android/AppModule;Landroid/app/Application;)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideSharedPreferences(Lorg/briarproject/briar/android/AppModule;Landroid/app/Application;)Landroid/content/SharedPreferences;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/AppModule;->provideSharedPreferences(Landroid/app/Application;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 42
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/SharedPreferences;

    return-object p0
.end method


# virtual methods
.method public get()Landroid/content/SharedPreferences;
    .locals 2

    .line 27
    iget-object v0, p0, Lorg/briarproject/briar/android/AppModule_ProvideSharedPreferencesFactory;->module:Lorg/briarproject/briar/android/AppModule;

    iget-object v1, p0, Lorg/briarproject/briar/android/AppModule_ProvideSharedPreferencesFactory;->appProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/briar/android/AppModule_ProvideSharedPreferencesFactory;->provideInstance(Lorg/briarproject/briar/android/AppModule;Ljavax/inject/Provider;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lorg/briarproject/briar/android/AppModule_ProvideSharedPreferencesFactory;->get()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
