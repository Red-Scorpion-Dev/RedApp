.class public final Lorg/briarproject/bramble/system/SystemModule_ProvideClockFactory;
.super Ljava/lang/Object;
.source "SystemModule_ProvideClockFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/api/system/Clock;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lorg/briarproject/bramble/system/SystemModule;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/system/SystemModule;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/briarproject/bramble/system/SystemModule_ProvideClockFactory;->module:Lorg/briarproject/bramble/system/SystemModule;

    return-void
.end method

.method public static create(Lorg/briarproject/bramble/system/SystemModule;)Lorg/briarproject/bramble/system/SystemModule_ProvideClockFactory;
    .locals 1

    .line 29
    new-instance v0, Lorg/briarproject/bramble/system/SystemModule_ProvideClockFactory;

    invoke-direct {v0, p0}, Lorg/briarproject/bramble/system/SystemModule_ProvideClockFactory;-><init>(Lorg/briarproject/bramble/system/SystemModule;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/bramble/system/SystemModule;)Lorg/briarproject/bramble/api/system/Clock;
    .locals 0

    .line 25
    invoke-static {p0}, Lorg/briarproject/bramble/system/SystemModule_ProvideClockFactory;->proxyProvideClock(Lorg/briarproject/bramble/system/SystemModule;)Lorg/briarproject/bramble/api/system/Clock;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideClock(Lorg/briarproject/bramble/system/SystemModule;)Lorg/briarproject/bramble/api/system/Clock;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lorg/briarproject/bramble/system/SystemModule;->provideClock()Lorg/briarproject/bramble/api/system/Clock;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 33
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/system/Clock;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lorg/briarproject/bramble/system/SystemModule_ProvideClockFactory;->get()Lorg/briarproject/bramble/api/system/Clock;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/api/system/Clock;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/briarproject/bramble/system/SystemModule_ProvideClockFactory;->module:Lorg/briarproject/bramble/system/SystemModule;

    invoke-static {v0}, Lorg/briarproject/bramble/system/SystemModule_ProvideClockFactory;->provideInstance(Lorg/briarproject/bramble/system/SystemModule;)Lorg/briarproject/bramble/api/system/Clock;

    move-result-object v0

    return-object v0
.end method
