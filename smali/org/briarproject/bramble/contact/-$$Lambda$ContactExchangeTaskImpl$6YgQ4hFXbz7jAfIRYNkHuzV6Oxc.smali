.class public final synthetic Lorg/briarproject/bramble/contact/-$$Lambda$ContactExchangeTaskImpl$6YgQ4hFXbz7jAfIRYNkHuzV6Oxc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/briarproject/bramble/api/db/DbCallable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;

.field private final synthetic f$1:Lorg/briarproject/bramble/api/identity/Author;

.field private final synthetic f$2:J

.field private final synthetic f$3:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;Lorg/briarproject/bramble/api/identity/Author;JLjava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/contact/-$$Lambda$ContactExchangeTaskImpl$6YgQ4hFXbz7jAfIRYNkHuzV6Oxc;->f$0:Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;

    iput-object p2, p0, Lorg/briarproject/bramble/contact/-$$Lambda$ContactExchangeTaskImpl$6YgQ4hFXbz7jAfIRYNkHuzV6Oxc;->f$1:Lorg/briarproject/bramble/api/identity/Author;

    iput-wide p3, p0, Lorg/briarproject/bramble/contact/-$$Lambda$ContactExchangeTaskImpl$6YgQ4hFXbz7jAfIRYNkHuzV6Oxc;->f$2:J

    iput-object p5, p0, Lorg/briarproject/bramble/contact/-$$Lambda$ContactExchangeTaskImpl$6YgQ4hFXbz7jAfIRYNkHuzV6Oxc;->f$3:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final call(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lorg/briarproject/bramble/contact/-$$Lambda$ContactExchangeTaskImpl$6YgQ4hFXbz7jAfIRYNkHuzV6Oxc;->f$0:Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;

    iget-object v1, p0, Lorg/briarproject/bramble/contact/-$$Lambda$ContactExchangeTaskImpl$6YgQ4hFXbz7jAfIRYNkHuzV6Oxc;->f$1:Lorg/briarproject/bramble/api/identity/Author;

    iget-wide v2, p0, Lorg/briarproject/bramble/contact/-$$Lambda$ContactExchangeTaskImpl$6YgQ4hFXbz7jAfIRYNkHuzV6Oxc;->f$2:J

    iget-object v4, p0, Lorg/briarproject/bramble/contact/-$$Lambda$ContactExchangeTaskImpl$6YgQ4hFXbz7jAfIRYNkHuzV6Oxc;->f$3:Ljava/util/Map;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->lambda$addContact$0(Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;Lorg/briarproject/bramble/api/identity/Author;JLjava/util/Map;Lorg/briarproject/bramble/api/db/Transaction;)Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object p1

    return-object p1
.end method
