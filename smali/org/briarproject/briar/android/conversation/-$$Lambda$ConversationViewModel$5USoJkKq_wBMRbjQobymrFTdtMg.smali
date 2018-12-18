.class public final synthetic Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationViewModel$5USoJkKq_wBMRbjQobymrFTdtMg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/arch/core/util/Function;


# static fields
.field public static final synthetic INSTANCE:Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationViewModel$5USoJkKq_wBMRbjQobymrFTdtMg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationViewModel$5USoJkKq_wBMRbjQobymrFTdtMg;

    invoke-direct {v0}, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationViewModel$5USoJkKq_wBMRbjQobymrFTdtMg;-><init>()V

    sput-object v0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationViewModel$5USoJkKq_wBMRbjQobymrFTdtMg;->INSTANCE:Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationViewModel$5USoJkKq_wBMRbjQobymrFTdtMg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/briarproject/bramble/api/contact/Contact;

    invoke-static {p1}, Lorg/briarproject/briar/android/conversation/ConversationViewModel;->lambda$new$0(Lorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object p1

    return-object p1
.end method
