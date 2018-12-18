.class Lorg/briarproject/bramble/reliability/Sender$Outstanding;
.super Ljava/lang/Object;
.source "Sender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/reliability/Sender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Outstanding"
.end annotation


# instance fields
.field private final data:Lorg/briarproject/bramble/reliability/Data;

.field private volatile lastTransmitted:J

.field private volatile retransmitted:Z


# direct methods
.method private constructor <init>(Lorg/briarproject/bramble/reliability/Data;J)V
    .locals 0

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p1, p0, Lorg/briarproject/bramble/reliability/Sender$Outstanding;->data:Lorg/briarproject/bramble/reliability/Data;

    .line 213
    iput-wide p2, p0, Lorg/briarproject/bramble/reliability/Sender$Outstanding;->lastTransmitted:J

    const/4 p1, 0x0

    .line 214
    iput-boolean p1, p0, Lorg/briarproject/bramble/reliability/Sender$Outstanding;->retransmitted:Z

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/bramble/reliability/Data;JLorg/briarproject/bramble/reliability/Sender$1;)V
    .locals 0

    .line 204
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/bramble/reliability/Sender$Outstanding;-><init>(Lorg/briarproject/bramble/reliability/Data;J)V

    return-void
.end method

.method static synthetic access$000(Lorg/briarproject/bramble/reliability/Sender$Outstanding;)Lorg/briarproject/bramble/reliability/Data;
    .locals 0

    .line 204
    iget-object p0, p0, Lorg/briarproject/bramble/reliability/Sender$Outstanding;->data:Lorg/briarproject/bramble/reliability/Data;

    return-object p0
.end method

.method static synthetic access$100(Lorg/briarproject/bramble/reliability/Sender$Outstanding;)Z
    .locals 0

    .line 204
    iget-boolean p0, p0, Lorg/briarproject/bramble/reliability/Sender$Outstanding;->retransmitted:Z

    return p0
.end method

.method static synthetic access$102(Lorg/briarproject/bramble/reliability/Sender$Outstanding;Z)Z
    .locals 0

    .line 204
    iput-boolean p1, p0, Lorg/briarproject/bramble/reliability/Sender$Outstanding;->retransmitted:Z

    return p1
.end method

.method static synthetic access$200(Lorg/briarproject/bramble/reliability/Sender$Outstanding;)J
    .locals 2

    .line 204
    iget-wide v0, p0, Lorg/briarproject/bramble/reliability/Sender$Outstanding;->lastTransmitted:J

    return-wide v0
.end method

.method static synthetic access$202(Lorg/briarproject/bramble/reliability/Sender$Outstanding;J)J
    .locals 0

    .line 204
    iput-wide p1, p0, Lorg/briarproject/bramble/reliability/Sender$Outstanding;->lastTransmitted:J

    return-wide p1
.end method
