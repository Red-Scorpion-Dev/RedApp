.class public Lorg/briarproject/briar/api/messaging/Attachment;
.super Ljava/lang/Object;
.source "Attachment.java"


# instance fields
.field private final data:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lorg/briarproject/briar/api/messaging/Attachment;->data:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public getData()Ljava/nio/ByteBuffer;
    .locals 1

    .line 14
    iget-object v0, p0, Lorg/briarproject/briar/api/messaging/Attachment;->data:Ljava/nio/ByteBuffer;

    return-object v0
.end method
