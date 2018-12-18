.class public final Lorg/briarproject/briar/test/TestModule_GetTestDataCreatorFactory;
.super Ljava/lang/Object;
.source "TestModule_GetTestDataCreatorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/api/test/TestDataCreator;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lorg/briarproject/briar/test/TestModule;

.field private final testDataCreatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/test/TestDataCreatorImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/briarproject/briar/test/TestModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/test/TestModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/test/TestDataCreatorImpl;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/briarproject/briar/test/TestModule_GetTestDataCreatorFactory;->module:Lorg/briarproject/briar/test/TestModule;

    .line 21
    iput-object p2, p0, Lorg/briarproject/briar/test/TestModule_GetTestDataCreatorFactory;->testDataCreatorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/briar/test/TestModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/test/TestModule_GetTestDataCreatorFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/test/TestModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/test/TestDataCreatorImpl;",
            ">;)",
            "Lorg/briarproject/briar/test/TestModule_GetTestDataCreatorFactory;"
        }
    .end annotation

    .line 36
    new-instance v0, Lorg/briarproject/briar/test/TestModule_GetTestDataCreatorFactory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/test/TestModule_GetTestDataCreatorFactory;-><init>(Lorg/briarproject/briar/test/TestModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/briar/test/TestModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/api/test/TestDataCreator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/test/TestModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/test/TestDataCreatorImpl;",
            ">;)",
            "Lorg/briarproject/briar/api/test/TestDataCreator;"
        }
    .end annotation

    .line 31
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/test/TestDataCreatorImpl;

    invoke-static {p0, p1}, Lorg/briarproject/briar/test/TestModule_GetTestDataCreatorFactory;->proxyGetTestDataCreator(Lorg/briarproject/briar/test/TestModule;Lorg/briarproject/briar/test/TestDataCreatorImpl;)Lorg/briarproject/briar/api/test/TestDataCreator;

    move-result-object p0

    return-object p0
.end method

.method public static proxyGetTestDataCreator(Lorg/briarproject/briar/test/TestModule;Lorg/briarproject/briar/test/TestDataCreatorImpl;)Lorg/briarproject/briar/api/test/TestDataCreator;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/test/TestModule;->getTestDataCreator(Lorg/briarproject/briar/test/TestDataCreatorImpl;)Lorg/briarproject/briar/api/test/TestDataCreator;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 41
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/api/test/TestDataCreator;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lorg/briarproject/briar/test/TestModule_GetTestDataCreatorFactory;->get()Lorg/briarproject/briar/api/test/TestDataCreator;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/api/test/TestDataCreator;
    .locals 2

    .line 26
    iget-object v0, p0, Lorg/briarproject/briar/test/TestModule_GetTestDataCreatorFactory;->module:Lorg/briarproject/briar/test/TestModule;

    iget-object v1, p0, Lorg/briarproject/briar/test/TestModule_GetTestDataCreatorFactory;->testDataCreatorProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/briar/test/TestModule_GetTestDataCreatorFactory;->provideInstance(Lorg/briarproject/briar/test/TestModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/api/test/TestDataCreator;

    move-result-object v0

    return-object v0
.end method
