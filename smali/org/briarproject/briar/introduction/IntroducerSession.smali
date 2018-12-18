.class Lorg/briarproject/briar/introduction/IntroducerSession;
.super Lorg/briarproject/briar/introduction/Session;
.source "IntroducerSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/introduction/Session<",
        "Lorg/briarproject/briar/introduction/IntroducerState;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final introduceeA:Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

.field private final introduceeB:Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;


# direct methods
.method constructor <init>(Lorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/identity/Author;)V
    .locals 7

    .line 32
    sget-object v2, Lorg/briarproject/briar/introduction/IntroducerState;->START:Lorg/briarproject/briar/introduction/IntroducerState;

    new-instance v5, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    invoke-direct {v5, p1, p2, p3}, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;-><init>(Lorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/identity/Author;)V

    new-instance v6, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    invoke-direct {v6, p1, p4, p5}, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;-><init>(Lorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/identity/Author;)V

    const-wide/16 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/briarproject/briar/introduction/IntroducerSession;-><init>(Lorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/briar/introduction/IntroducerState;JLorg/briarproject/briar/introduction/IntroducerSession$Introducee;Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;)V

    return-void
.end method

.method constructor <init>(Lorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/briar/introduction/IntroducerState;JLorg/briarproject/briar/introduction/IntroducerSession$Introducee;Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/briarproject/briar/introduction/Session;-><init>(Lorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/briar/introduction/State;J)V

    .line 26
    iput-object p5, p0, Lorg/briarproject/briar/introduction/IntroducerSession;->introduceeA:Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    .line 27
    iput-object p6, p0, Lorg/briarproject/briar/introduction/IntroducerSession;->introduceeB:Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    return-void
.end method


# virtual methods
.method getIntroduceeA()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroducerSession;->introduceeA:Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    return-object v0
.end method

.method getIntroduceeB()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroducerSession;->introduceeB:Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    return-object v0
.end method

.method getRole()Lorg/briarproject/briar/api/introduction/Role;
    .locals 1

    .line 39
    sget-object v0, Lorg/briarproject/briar/api/introduction/Role;->INTRODUCER:Lorg/briarproject/briar/api/introduction/Role;

    return-object v0
.end method
