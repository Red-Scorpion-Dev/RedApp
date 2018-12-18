.class public final Lorg/briarproject/briar/android/AppModule_ProvidesApplicationFactory;
.super Ljava/lang/Object;
.source "AppModule_ProvidesApplicationFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/app/Application;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lorg/briarproject/briar/android/AppModule;


# direct methods
.method public constructor <init>(Lorg/briarproject/briar/android/AppModule;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/briarproject/briar/android/AppModule_ProvidesApplicationFactory;->module:Lorg/briarproject/briar/android/AppModule;

    return-void
.end method

.method public static create(Lorg/briarproject/briar/android/AppModule;)Lorg/briarproject/briar/android/AppModule_ProvidesApplicationFactory;
    .locals 1

    .line 29
    new-instance v0, Lorg/briarproject/briar/android/AppModule_ProvidesApplicationFactory;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/AppModule_ProvidesApplicationFactory;-><init>(Lorg/briarproject/briar/android/AppModule;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/briar/android/AppModule;)Landroid/app/Application;
    .locals 0

    .line 25
    invoke-static {p0}, Lorg/briarproject/briar/android/AppModule_ProvidesApplicationFactory;->proxyProvidesApplication(Lorg/briarproject/briar/android/AppModule;)Landroid/app/Application;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvidesApplication(Lorg/briarproject/briar/android/AppModule;)Landroid/app/Application;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lorg/briarproject/briar/android/AppModule;->providesApplication()Landroid/app/Application;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 33
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    return-object p0
.end method


# virtual methods
.method public get()Landroid/app/Application;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/briarproject/briar/android/AppModule_ProvidesApplicationFactory;->module:Lorg/briarproject/briar/android/AppModule;

    invoke-static {v0}, Lorg/briarproject/briar/android/AppModule_ProvidesApplicationFactory;->provideInstance(Lorg/briarproject/briar/android/AppModule;)Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lorg/briarproject/briar/android/AppModule_ProvidesApplicationFactory;->get()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method
