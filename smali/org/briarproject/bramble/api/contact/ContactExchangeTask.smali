.class public interface abstract Lorg/briarproject/bramble/api/contact/ContactExchangeTask;
.super Ljava/lang/Object;
.source "ContactExchangeTask.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field public static final ALICE_KEY_LABEL:Ljava/lang/String; = "org.briarproject.bramble.contact/ALICE_HEADER_KEY"

.field public static final ALICE_NONCE_LABEL:Ljava/lang/String; = "org.briarproject.bramble.contact/ALICE_NONCE"

.field public static final BOB_KEY_LABEL:Ljava/lang/String; = "org.briarproject.bramble.contact/BOB_HEADER_KEY"

.field public static final BOB_NONCE_LABEL:Ljava/lang/String; = "org.briarproject.bramble.contact/BOB_NONCE"

.field public static final PROTOCOL_VERSION:B = 0x1t


# virtual methods
.method public abstract startExchange(Lorg/briarproject/bramble/api/contact/ContactExchangeListener;Lorg/briarproject/bramble/api/identity/LocalAuthor;Lorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;Lorg/briarproject/bramble/api/plugin/TransportId;Z)V
.end method
