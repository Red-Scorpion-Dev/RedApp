.class abstract Lorg/briarproject/briar/introduction/Session;
.super Ljava/lang/Object;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/briarproject/briar/introduction/State;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final requestTimestamp:J

.field private final sessionId:Lorg/briarproject/briar/api/client/SessionId;

.field private final state:Lorg/briarproject/briar/introduction/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/briar/introduction/State;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/api/client/SessionId;",
            "TS;J)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/briarproject/briar/introduction/Session;->sessionId:Lorg/briarproject/briar/api/client/SessionId;

    .line 19
    iput-object p2, p0, Lorg/briarproject/briar/introduction/Session;->state:Lorg/briarproject/briar/introduction/State;

    .line 20
    iput-wide p3, p0, Lorg/briarproject/briar/introduction/Session;->requestTimestamp:J

    return-void
.end method


# virtual methods
.method getRequestTimestamp()J
    .locals 2

    .line 34
    iget-wide v0, p0, Lorg/briarproject/briar/introduction/Session;->requestTimestamp:J

    return-wide v0
.end method

.method abstract getRole()Lorg/briarproject/briar/api/introduction/Role;
.end method

.method public getSessionId()Lorg/briarproject/briar/api/client/SessionId;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/briarproject/briar/introduction/Session;->sessionId:Lorg/briarproject/briar/api/client/SessionId;

    return-object v0
.end method

.method getState()Lorg/briarproject/briar/introduction/State;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lorg/briarproject/briar/introduction/Session;->state:Lorg/briarproject/briar/introduction/State;

    return-object v0
.end method
