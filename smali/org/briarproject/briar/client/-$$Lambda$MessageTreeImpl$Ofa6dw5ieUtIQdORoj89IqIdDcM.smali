.class public final synthetic Lorg/briarproject/briar/client/-$$Lambda$MessageTreeImpl$Ofa6dw5ieUtIQdORoj89IqIdDcM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lorg/briarproject/briar/client/-$$Lambda$MessageTreeImpl$Ofa6dw5ieUtIQdORoj89IqIdDcM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/briarproject/briar/client/-$$Lambda$MessageTreeImpl$Ofa6dw5ieUtIQdORoj89IqIdDcM;

    invoke-direct {v0}, Lorg/briarproject/briar/client/-$$Lambda$MessageTreeImpl$Ofa6dw5ieUtIQdORoj89IqIdDcM;-><init>()V

    sput-object v0, Lorg/briarproject/briar/client/-$$Lambda$MessageTreeImpl$Ofa6dw5ieUtIQdORoj89IqIdDcM;->INSTANCE:Lorg/briarproject/briar/client/-$$Lambda$MessageTreeImpl$Ofa6dw5ieUtIQdORoj89IqIdDcM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/briarproject/briar/api/client/MessageTree$MessageNode;

    check-cast p2, Lorg/briarproject/briar/api/client/MessageTree$MessageNode;

    invoke-static {p1, p2}, Lorg/briarproject/briar/client/MessageTreeImpl;->lambda$new$0(Lorg/briarproject/briar/api/client/MessageTree$MessageNode;Lorg/briarproject/briar/api/client/MessageTree$MessageNode;)I

    move-result p1

    return p1
.end method
