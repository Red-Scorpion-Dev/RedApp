.class Lorg/briarproject/bramble/db/DatabaseTypes;
.super Ljava/lang/Object;
.source "DatabaseTypes.java"


# instance fields
.field private final binaryType:Ljava/lang/String;

.field private final counterType:Ljava/lang/String;

.field private final hashType:Ljava/lang/String;

.field private final secretType:Ljava/lang/String;

.field private final stringType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lorg/briarproject/bramble/db/DatabaseTypes;->hashType:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lorg/briarproject/bramble/db/DatabaseTypes;->secretType:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lorg/briarproject/bramble/db/DatabaseTypes;->binaryType:Ljava/lang/String;

    .line 13
    iput-object p4, p0, Lorg/briarproject/bramble/db/DatabaseTypes;->counterType:Ljava/lang/String;

    .line 14
    iput-object p5, p0, Lorg/briarproject/bramble/db/DatabaseTypes;->stringType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method replaceTypes(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "_HASH"

    .line 27
    iget-object v1, p0, Lorg/briarproject/bramble/db/DatabaseTypes;->hashType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "_SECRET"

    .line 28
    iget-object v1, p0, Lorg/briarproject/bramble/db/DatabaseTypes;->secretType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "_BINARY"

    .line 29
    iget-object v1, p0, Lorg/briarproject/bramble/db/DatabaseTypes;->binaryType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "_COUNTER"

    .line 30
    iget-object v1, p0, Lorg/briarproject/bramble/db/DatabaseTypes;->counterType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "_STRING"

    .line 31
    iget-object v1, p0, Lorg/briarproject/bramble/db/DatabaseTypes;->stringType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
