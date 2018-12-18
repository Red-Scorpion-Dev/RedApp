.class public final synthetic Lorg/briarproject/bramble/plugin/tcp/-$$Lambda$TcpPlugin$5xO7CqzfOTp_eOSHFJ2uzvh7zLE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;

.field private final synthetic f$1:Lorg/briarproject/bramble/api/properties/TransportProperties;

.field private final synthetic f$2:Lorg/briarproject/bramble/api/contact/ContactId;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;Lorg/briarproject/bramble/api/properties/TransportProperties;Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/plugin/tcp/-$$Lambda$TcpPlugin$5xO7CqzfOTp_eOSHFJ2uzvh7zLE;->f$0:Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;

    iput-object p2, p0, Lorg/briarproject/bramble/plugin/tcp/-$$Lambda$TcpPlugin$5xO7CqzfOTp_eOSHFJ2uzvh7zLE;->f$1:Lorg/briarproject/bramble/api/properties/TransportProperties;

    iput-object p3, p0, Lorg/briarproject/bramble/plugin/tcp/-$$Lambda$TcpPlugin$5xO7CqzfOTp_eOSHFJ2uzvh7zLE;->f$2:Lorg/briarproject/bramble/api/contact/ContactId;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/-$$Lambda$TcpPlugin$5xO7CqzfOTp_eOSHFJ2uzvh7zLE;->f$0:Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;

    iget-object v1, p0, Lorg/briarproject/bramble/plugin/tcp/-$$Lambda$TcpPlugin$5xO7CqzfOTp_eOSHFJ2uzvh7zLE;->f$1:Lorg/briarproject/bramble/api/properties/TransportProperties;

    iget-object v2, p0, Lorg/briarproject/bramble/plugin/tcp/-$$Lambda$TcpPlugin$5xO7CqzfOTp_eOSHFJ2uzvh7zLE;->f$2:Lorg/briarproject/bramble/api/contact/ContactId;

    invoke-static {v0, v1, v2}, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->lambda$connectAndCallBack$1(Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;Lorg/briarproject/bramble/api/properties/TransportProperties;Lorg/briarproject/bramble/api/contact/ContactId;)V

    return-void
.end method
