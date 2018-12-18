.class public Lorg/briarproject/bramble/client/ClientModule;
.super Ljava/lang/Object;
.source "ClientModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method provideClientHelper(Lorg/briarproject/bramble/client/ClientHelperImpl;)Lorg/briarproject/bramble/api/client/ClientHelper;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    return-object p1
.end method

.method provideContactGroupFactory(Lorg/briarproject/bramble/client/ContactGroupFactoryImpl;)Lorg/briarproject/bramble/api/client/ContactGroupFactory;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    return-object p1
.end method
