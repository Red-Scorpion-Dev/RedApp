.class public final Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl_Factory;
.super Ljava/lang/Object;
.source "ContactExchangeTaskImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final clientHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ClientHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final clockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;"
        }
    .end annotation
.end field

.field private final connectionManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/plugin/ConnectionManager;",
            ">;"
        }
    .end annotation
.end field

.field private final contactManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/contact/ContactManager;",
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

.field private final dbProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/db/DatabaseComponent;",
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

.field private final streamReaderFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/transport/StreamReaderFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final streamWriterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/transport/StreamWriterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final transportPropertyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/properties/TransportPropertyManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/db/DatabaseComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ClientHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/record/RecordReaderFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/record/RecordWriterFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/plugin/ConnectionManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/contact/ContactManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/properties/TransportPropertyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/CryptoComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/transport/StreamReaderFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/transport/StreamWriterFactory;",
            ">;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl_Factory;->dbProvider:Ljavax/inject/Provider;

    .line 58
    iput-object p2, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl_Factory;->clientHelperProvider:Ljavax/inject/Provider;

    .line 59
    iput-object p3, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl_Factory;->recordReaderFactoryProvider:Ljavax/inject/Provider;

    .line 60
    iput-object p4, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl_Factory;->recordWriterFactoryProvider:Ljavax/inject/Provider;

    .line 61
    iput-object p5, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl_Factory;->clockProvider:Ljavax/inject/Provider;

    .line 62
    iput-object p6, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl_Factory;->connectionManagerProvider:Ljavax/inject/Provider;

    .line 63
    iput-object p7, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl_Factory;->contactManagerProvider:Ljavax/inject/Provider;

    .line 64
    iput-object p8, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl_Factory;->transportPropertyManagerProvider:Ljavax/inject/Provider;

    .line 65
    iput-object p9, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl_Factory;->cryptoProvider:Ljavax/inject/Provider;

    .line 66
    iput-object p10, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl_Factory;->streamReaderFactoryProvider:Ljavax/inject/Provider;

    .line 67
    iput-object p11, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl_Factory;->streamWriterFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl_Factory;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/db/DatabaseComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ClientHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/record/RecordReaderFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/record/RecordWriterFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/plugin/ConnectionManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/contact/ContactManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/properties/TransportPropertyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/CryptoComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/transport/StreamReaderFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/transport/StreamWriterFactory;",
            ">;)",
            "Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl_Factory;"
        }
    .end annotation

    .line 124
    new-instance v12, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl_Factory;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v12
.end method

.method public static newContactExchangeTaskImpl(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/record/RecordReaderFactory;Lorg/briarproject/bramble/api/record/RecordWriterFactory;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/bramble/api/plugin/ConnectionManager;Lorg/briarproject/bramble/api/contact/ContactManager;Lorg/briarproject/bramble/api/properties/TransportPropertyManager;Lorg/briarproject/bramble/api/crypto/CryptoComponent;Lorg/briarproject/bramble/api/transport/StreamReaderFactory;Lorg/briarproject/bramble/api/transport/StreamWriterFactory;)Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;
    .locals 13

    .line 150
    new-instance v12, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;-><init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/record/RecordReaderFactory;Lorg/briarproject/bramble/api/record/RecordWriterFactory;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/bramble/api/plugin/ConnectionManager;Lorg/briarproject/bramble/api/contact/ContactManager;Lorg/briarproject/bramble/api/properties/TransportPropertyManager;Lorg/briarproject/bramble/api/crypto/CryptoComponent;Lorg/briarproject/bramble/api/transport/StreamReaderFactory;Lorg/briarproject/bramble/api/transport/StreamWriterFactory;)V

    return-object v12
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/db/DatabaseComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ClientHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/record/RecordReaderFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/record/RecordWriterFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/plugin/ConnectionManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/contact/ContactManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/properties/TransportPropertyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/CryptoComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/transport/StreamReaderFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/transport/StreamWriterFactory;",
            ">;)",
            "Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;"
        }
    .end annotation

    .line 98
    new-instance v12, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;

    .line 99
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/briarproject/bramble/api/db/DatabaseComponent;

    .line 100
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 101
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/briarproject/bramble/api/record/RecordReaderFactory;

    .line 102
    invoke-interface/range {p3 .. p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/briarproject/bramble/api/record/RecordWriterFactory;

    .line 103
    invoke-interface/range {p4 .. p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/briarproject/bramble/api/system/Clock;

    .line 104
    invoke-interface/range {p5 .. p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/briarproject/bramble/api/plugin/ConnectionManager;

    .line 105
    invoke-interface/range {p6 .. p6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lorg/briarproject/bramble/api/contact/ContactManager;

    .line 106
    invoke-interface/range {p7 .. p7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lorg/briarproject/bramble/api/properties/TransportPropertyManager;

    .line 107
    invoke-interface/range {p8 .. p8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    .line 108
    invoke-interface/range {p9 .. p9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lorg/briarproject/bramble/api/transport/StreamReaderFactory;

    .line 109
    invoke-interface/range {p10 .. p10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lorg/briarproject/bramble/api/transport/StreamWriterFactory;

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;-><init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/record/RecordReaderFactory;Lorg/briarproject/bramble/api/record/RecordWriterFactory;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/bramble/api/plugin/ConnectionManager;Lorg/briarproject/bramble/api/contact/ContactManager;Lorg/briarproject/bramble/api/properties/TransportPropertyManager;Lorg/briarproject/bramble/api/crypto/CryptoComponent;Lorg/briarproject/bramble/api/transport/StreamReaderFactory;Lorg/briarproject/bramble/api/transport/StreamWriterFactory;)V

    return-object v12
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl_Factory;->get()Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;
    .locals 11

    .line 72
    iget-object v0, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl_Factory;->dbProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl_Factory;->clientHelperProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl_Factory;->recordReaderFactoryProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl_Factory;->recordWriterFactoryProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl_Factory;->clockProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl_Factory;->connectionManagerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl_Factory;->contactManagerProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl_Factory;->transportPropertyManagerProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl_Factory;->cryptoProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl_Factory;->streamReaderFactoryProvider:Ljavax/inject/Provider;

    iget-object v10, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl_Factory;->streamWriterFactoryProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v10}, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;

    move-result-object v0

    return-object v0
.end method
