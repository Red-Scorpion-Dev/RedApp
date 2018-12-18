.class public Lorg/briarproject/bramble/system/AndroidSystemModule;
.super Ljava/lang/Object;
.source "AndroidSystemModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method provideAndroidExecutor(Lorg/briarproject/bramble/system/AndroidExecutorImpl;)Lorg/briarproject/bramble/api/system/AndroidExecutor;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    return-object p1
.end method

.method provideLocationUtils(Lorg/briarproject/bramble/system/AndroidLocationUtils;)Lorg/briarproject/bramble/api/system/LocationUtils;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    return-object p1
.end method

.method provideResourceProvider(Lorg/briarproject/bramble/system/AndroidResourceProvider;)Lorg/briarproject/bramble/api/system/ResourceProvider;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    return-object p1
.end method

.method provideSecureRandomProvider(Lorg/briarproject/bramble/system/AndroidSecureRandomProvider;)Lorg/briarproject/bramble/api/system/SecureRandomProvider;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    return-object p1
.end method
