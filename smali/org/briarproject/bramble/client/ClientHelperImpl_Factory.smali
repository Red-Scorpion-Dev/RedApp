.class public final Lorg/briarproject/bramble/client/ClientHelperImpl_Factory;
.super Ljava/lang/Object;
.source "ClientHelperImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/client/ClientHelperImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final authorFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/identity/AuthorFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final bdfReaderFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/data/BdfReaderFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final bdfWriterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/data/BdfWriterFactory;",
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

.field private final messageFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/MessageFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final metadataEncoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/data/MetadataEncoder;",
            ">;"
        }
    .end annotation
.end field

.field private final metadataParserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/data/MetadataParser;",
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
            "Lorg/briarproject/bramble/api/db/DatabaseComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/MessageFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/data/BdfReaderFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/data/BdfWriterFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/data/MetadataParser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/data/MetadataEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/CryptoComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/identity/AuthorFactory;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/briarproject/bramble/client/ClientHelperImpl_Factory;->dbProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p2, p0, Lorg/briarproject/bramble/client/ClientHelperImpl_Factory;->messageFactoryProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p3, p0, Lorg/briarproject/bramble/client/ClientHelperImpl_Factory;->bdfReaderFactoryProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p4, p0, Lorg/briarproject/bramble/client/ClientHelperImpl_Factory;->bdfWriterFactoryProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p5, p0, Lorg/briarproject/bramble/client/ClientHelperImpl_Factory;->metadataParserProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p6, p0, Lorg/briarproject/bramble/client/ClientHelperImpl_Factory;->metadataEncoderProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p7, p0, Lorg/briarproject/bramble/client/ClientHelperImpl_Factory;->cryptoProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p8, p0, Lorg/briarproject/bramble/client/ClientHelperImpl_Factory;->authorFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/client/ClientHelperImpl_Factory;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/db/DatabaseComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/MessageFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/data/BdfReaderFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/data/BdfWriterFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/data/MetadataParser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/data/MetadataEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/CryptoComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/identity/AuthorFactory;",
            ">;)",
            "Lorg/briarproject/bramble/client/ClientHelperImpl_Factory;"
        }
    .end annotation

    .line 97
    new-instance v9, Lorg/briarproject/bramble/client/ClientHelperImpl_Factory;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/briarproject/bramble/client/ClientHelperImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v9
.end method

.method public static newClientHelperImpl(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/sync/MessageFactory;Lorg/briarproject/bramble/api/data/BdfReaderFactory;Lorg/briarproject/bramble/api/data/BdfWriterFactory;Lorg/briarproject/bramble/api/data/MetadataParser;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/crypto/CryptoComponent;Lorg/briarproject/bramble/api/identity/AuthorFactory;)Lorg/briarproject/bramble/client/ClientHelperImpl;
    .locals 10

    .line 117
    new-instance v9, Lorg/briarproject/bramble/client/ClientHelperImpl;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/briarproject/bramble/client/ClientHelperImpl;-><init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/sync/MessageFactory;Lorg/briarproject/bramble/api/data/BdfReaderFactory;Lorg/briarproject/bramble/api/data/BdfWriterFactory;Lorg/briarproject/bramble/api/data/MetadataParser;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/crypto/CryptoComponent;Lorg/briarproject/bramble/api/identity/AuthorFactory;)V

    return-object v9
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/client/ClientHelperImpl;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/db/DatabaseComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/MessageFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/data/BdfReaderFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/data/BdfWriterFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/data/MetadataParser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/data/MetadataEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/CryptoComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/identity/AuthorFactory;",
            ">;)",
            "Lorg/briarproject/bramble/client/ClientHelperImpl;"
        }
    .end annotation

    .line 77
    new-instance v9, Lorg/briarproject/bramble/client/ClientHelperImpl;

    .line 78
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/briarproject/bramble/api/db/DatabaseComponent;

    .line 79
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/briarproject/bramble/api/sync/MessageFactory;

    .line 80
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/briarproject/bramble/api/data/BdfReaderFactory;

    .line 81
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/briarproject/bramble/api/data/BdfWriterFactory;

    .line 82
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/briarproject/bramble/api/data/MetadataParser;

    .line 83
    invoke-interface {p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/briarproject/bramble/api/data/MetadataEncoder;

    .line 84
    invoke-interface/range {p6 .. p6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    .line 85
    invoke-interface/range {p7 .. p7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lorg/briarproject/bramble/api/identity/AuthorFactory;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/briarproject/bramble/client/ClientHelperImpl;-><init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/sync/MessageFactory;Lorg/briarproject/bramble/api/data/BdfReaderFactory;Lorg/briarproject/bramble/api/data/BdfWriterFactory;Lorg/briarproject/bramble/api/data/MetadataParser;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/crypto/CryptoComponent;Lorg/briarproject/bramble/api/identity/AuthorFactory;)V

    return-object v9
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lorg/briarproject/bramble/client/ClientHelperImpl_Factory;->get()Lorg/briarproject/bramble/client/ClientHelperImpl;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/client/ClientHelperImpl;
    .locals 8

    .line 57
    iget-object v0, p0, Lorg/briarproject/bramble/client/ClientHelperImpl_Factory;->dbProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lorg/briarproject/bramble/client/ClientHelperImpl_Factory;->messageFactoryProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/bramble/client/ClientHelperImpl_Factory;->bdfReaderFactoryProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lorg/briarproject/bramble/client/ClientHelperImpl_Factory;->bdfWriterFactoryProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lorg/briarproject/bramble/client/ClientHelperImpl_Factory;->metadataParserProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lorg/briarproject/bramble/client/ClientHelperImpl_Factory;->metadataEncoderProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lorg/briarproject/bramble/client/ClientHelperImpl_Factory;->cryptoProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lorg/briarproject/bramble/client/ClientHelperImpl_Factory;->authorFactoryProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v7}, Lorg/briarproject/bramble/client/ClientHelperImpl_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/client/ClientHelperImpl;

    move-result-object v0

    return-object v0
.end method
