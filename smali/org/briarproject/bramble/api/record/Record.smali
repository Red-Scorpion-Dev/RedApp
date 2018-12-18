.class public Lorg/briarproject/bramble/api/record/Record;
.super Ljava/lang/Object;
.source "Record.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field public static final MAX_RECORD_PAYLOAD_BYTES:I = 0xc000

.field public static final RECORD_HEADER_BYTES:I = 0x4


# instance fields
.field private final payload:[B

.field private final protocolVersion:B

.field private final recordType:B


# direct methods
.method public constructor <init>(BB[B)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    array-length v0, p3

    const v1, 0xc000

    if-gt v0, v1, :cond_0

    .line 20
    iput-byte p1, p0, Lorg/briarproject/bramble/api/record/Record;->protocolVersion:B

    .line 21
    iput-byte p2, p0, Lorg/briarproject/bramble/api/record/Record;->recordType:B

    .line 22
    iput-object p3, p0, Lorg/briarproject/bramble/api/record/Record;->payload:[B

    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public getPayload()[B
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/briarproject/bramble/api/record/Record;->payload:[B

    return-object v0
.end method

.method public getProtocolVersion()B
    .locals 1

    .line 26
    iget-byte v0, p0, Lorg/briarproject/bramble/api/record/Record;->protocolVersion:B

    return v0
.end method

.method public getRecordType()B
    .locals 1

    .line 30
    iget-byte v0, p0, Lorg/briarproject/bramble/api/record/Record;->recordType:B

    return v0
.end method
