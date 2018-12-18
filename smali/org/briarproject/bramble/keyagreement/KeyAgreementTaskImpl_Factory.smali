.class public final Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl_Factory;
.super Ljava/lang/Object;
.source "KeyAgreementTaskImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final connectionChooserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/keyagreement/ConnectionChooser;",
            ">;"
        }
    .end annotation
.end field

.field private final cryptoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/CryptoComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final eventBusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;"
        }
    .end annotation
.end field

.field private final keyAgreementCryptoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/KeyAgreementCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private final payloadEncoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/keyagreement/PayloadEncoder;",
            ">;"
        }
    .end annotation
.end field

.field private final pluginManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/plugin/PluginManager;",
            ">;"
        }
    .end annotation
.end field

.field private final recordReaderFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/record/RecordReaderFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final recordWriterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/record/RecordWriterFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/CryptoComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/KeyAgreementCrypto;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/keyagreement/PayloadEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/plugin/PluginManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/keyagreement/ConnectionChooser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/record/RecordReaderFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/record/RecordWriterFactory;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl_Factory;->cryptoProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p2, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl_Factory;->keyAgreementCryptoProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p3, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl_Factory;->eventBusProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p4, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl_Factory;->payloadEncoderProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p5, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl_Factory;->pluginManagerProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p6, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl_Factory;->connectionChooserProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p7, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl_Factory;->recordReaderFactoryProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p8, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl_Factory;->recordWriterFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl_Factory;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/CryptoComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/KeyAgreementCrypto;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/keyagreement/PayloadEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/plugin/PluginManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/keyagreement/ConnectionChooser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/record/RecordReaderFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/record/RecordWriterFactory;",
            ">;)",
            "Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl_Factory;"
        }
    .end annotation

    .line 96
    new-instance v9, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl_Factory;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v9
.end method

.method public static newKeyAgreementTaskImpl(Lorg/briarproject/bramble/api/crypto/CryptoComponent;Lorg/briarproject/bramble/api/crypto/KeyAgreementCrypto;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/bramble/api/keyagreement/PayloadEncoder;Lorg/briarproject/bramble/api/plugin/PluginManager;Ljava/lang/Object;Lorg/briarproject/bramble/api/record/RecordReaderFactory;Lorg/briarproject/bramble/api/record/RecordWriterFactory;)Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;
    .locals 10

    .line 116
    new-instance v9, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;

    move-object v6, p5

    check-cast v6, Lorg/briarproject/bramble/keyagreement/ConnectionChooser;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;-><init>(Lorg/briarproject/bramble/api/crypto/CryptoComponent;Lorg/briarproject/bramble/api/crypto/KeyAgreementCrypto;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/bramble/api/keyagreement/PayloadEncoder;Lorg/briarproject/bramble/api/plugin/PluginManager;Lorg/briarproject/bramble/keyagreement/ConnectionChooser;Lorg/briarproject/bramble/api/record/RecordReaderFactory;Lorg/briarproject/bramble/api/record/RecordWriterFactory;)V

    return-object v9
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/CryptoComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/KeyAgreementCrypto;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/keyagreement/PayloadEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/plugin/PluginManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/keyagreement/ConnectionChooser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/record/RecordReaderFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/record/RecordWriterFactory;",
            ">;)",
            "Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;"
        }
    .end annotation

    .line 76
    new-instance v9, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;

    .line 77
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    .line 78
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/briarproject/bramble/api/crypto/KeyAgreementCrypto;

    .line 79
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/briarproject/bramble/api/event/EventBus;

    .line 80
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/briarproject/bramble/api/keyagreement/PayloadEncoder;

    .line 81
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/briarproject/bramble/api/plugin/PluginManager;

    .line 82
    invoke-interface {p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/briarproject/bramble/keyagreement/ConnectionChooser;

    .line 83
    invoke-interface/range {p6 .. p6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lorg/briarproject/bramble/api/record/RecordReaderFactory;

    .line 84
    invoke-interface/range {p7 .. p7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lorg/briarproject/bramble/api/record/RecordWriterFactory;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;-><init>(Lorg/briarproject/bramble/api/crypto/CryptoComponent;Lorg/briarproject/bramble/api/crypto/KeyAgreementCrypto;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/bramble/api/keyagreement/PayloadEncoder;Lorg/briarproject/bramble/api/plugin/PluginManager;Lorg/briarproject/bramble/keyagreement/ConnectionChooser;Lorg/briarproject/bramble/api/record/RecordReaderFactory;Lorg/briarproject/bramble/api/record/RecordWriterFactory;)V

    return-object v9
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl_Factory;->get()Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;
    .locals 8

    .line 56
    iget-object v0, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl_Factory;->cryptoProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl_Factory;->keyAgreementCryptoProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl_Factory;->eventBusProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl_Factory;->payloadEncoderProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl_Factory;->pluginManagerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl_Factory;->connectionChooserProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl_Factory;->recordReaderFactoryProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl_Factory;->recordWriterFactoryProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v7}, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;

    move-result-object v0

    return-object v0
.end method
