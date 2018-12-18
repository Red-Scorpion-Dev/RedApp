.class public final synthetic Lorg/briarproject/bramble/contact/-$$Lambda$ContactManagerImpl$jmNrPc7FumNkK44HwL_pcIa11BY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/briarproject/bramble/api/db/DbCallable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/bramble/contact/ContactManagerImpl;

.field private final synthetic f$1:Lorg/briarproject/bramble/api/identity/Author;

.field private final synthetic f$2:Lorg/briarproject/bramble/api/identity/AuthorId;

.field private final synthetic f$3:Lorg/briarproject/bramble/api/crypto/SecretKey;

.field private final synthetic f$4:J

.field private final synthetic f$5:Z

.field private final synthetic f$6:Z

.field private final synthetic f$7:Z


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/bramble/contact/ContactManagerImpl;Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/crypto/SecretKey;JZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/contact/-$$Lambda$ContactManagerImpl$jmNrPc7FumNkK44HwL_pcIa11BY;->f$0:Lorg/briarproject/bramble/contact/ContactManagerImpl;

    iput-object p2, p0, Lorg/briarproject/bramble/contact/-$$Lambda$ContactManagerImpl$jmNrPc7FumNkK44HwL_pcIa11BY;->f$1:Lorg/briarproject/bramble/api/identity/Author;

    iput-object p3, p0, Lorg/briarproject/bramble/contact/-$$Lambda$ContactManagerImpl$jmNrPc7FumNkK44HwL_pcIa11BY;->f$2:Lorg/briarproject/bramble/api/identity/AuthorId;

    iput-object p4, p0, Lorg/briarproject/bramble/contact/-$$Lambda$ContactManagerImpl$jmNrPc7FumNkK44HwL_pcIa11BY;->f$3:Lorg/briarproject/bramble/api/crypto/SecretKey;

    iput-wide p5, p0, Lorg/briarproject/bramble/contact/-$$Lambda$ContactManagerImpl$jmNrPc7FumNkK44HwL_pcIa11BY;->f$4:J

    iput-boolean p7, p0, Lorg/briarproject/bramble/contact/-$$Lambda$ContactManagerImpl$jmNrPc7FumNkK44HwL_pcIa11BY;->f$5:Z

    iput-boolean p8, p0, Lorg/briarproject/bramble/contact/-$$Lambda$ContactManagerImpl$jmNrPc7FumNkK44HwL_pcIa11BY;->f$6:Z

    iput-boolean p9, p0, Lorg/briarproject/bramble/contact/-$$Lambda$ContactManagerImpl$jmNrPc7FumNkK44HwL_pcIa11BY;->f$7:Z

    return-void
.end method


# virtual methods
.method public final call(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lorg/briarproject/bramble/contact/-$$Lambda$ContactManagerImpl$jmNrPc7FumNkK44HwL_pcIa11BY;->f$0:Lorg/briarproject/bramble/contact/ContactManagerImpl;

    iget-object v1, p0, Lorg/briarproject/bramble/contact/-$$Lambda$ContactManagerImpl$jmNrPc7FumNkK44HwL_pcIa11BY;->f$1:Lorg/briarproject/bramble/api/identity/Author;

    iget-object v2, p0, Lorg/briarproject/bramble/contact/-$$Lambda$ContactManagerImpl$jmNrPc7FumNkK44HwL_pcIa11BY;->f$2:Lorg/briarproject/bramble/api/identity/AuthorId;

    iget-object v3, p0, Lorg/briarproject/bramble/contact/-$$Lambda$ContactManagerImpl$jmNrPc7FumNkK44HwL_pcIa11BY;->f$3:Lorg/briarproject/bramble/api/crypto/SecretKey;

    iget-wide v4, p0, Lorg/briarproject/bramble/contact/-$$Lambda$ContactManagerImpl$jmNrPc7FumNkK44HwL_pcIa11BY;->f$4:J

    iget-boolean v6, p0, Lorg/briarproject/bramble/contact/-$$Lambda$ContactManagerImpl$jmNrPc7FumNkK44HwL_pcIa11BY;->f$5:Z

    iget-boolean v7, p0, Lorg/briarproject/bramble/contact/-$$Lambda$ContactManagerImpl$jmNrPc7FumNkK44HwL_pcIa11BY;->f$6:Z

    iget-boolean v8, p0, Lorg/briarproject/bramble/contact/-$$Lambda$ContactManagerImpl$jmNrPc7FumNkK44HwL_pcIa11BY;->f$7:Z

    move-object v9, p1

    invoke-static/range {v0 .. v9}, Lorg/briarproject/bramble/contact/ContactManagerImpl;->lambda$addContact$0(Lorg/briarproject/bramble/contact/ContactManagerImpl;Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/crypto/SecretKey;JZZZLorg/briarproject/bramble/api/db/Transaction;)Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object p1

    return-object p1
.end method
