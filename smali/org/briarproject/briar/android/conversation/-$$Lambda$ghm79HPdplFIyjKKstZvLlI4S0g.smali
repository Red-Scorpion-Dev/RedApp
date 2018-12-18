.class public final synthetic Lorg/briarproject/briar/android/conversation/-$$Lambda$ghm79HPdplFIyjKKstZvLlI4S0g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/arch/core/util/Function;


# static fields
.field public static final synthetic INSTANCE:Lorg/briarproject/briar/android/conversation/-$$Lambda$ghm79HPdplFIyjKKstZvLlI4S0g;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ghm79HPdplFIyjKKstZvLlI4S0g;

    invoke-direct {v0}, Lorg/briarproject/briar/android/conversation/-$$Lambda$ghm79HPdplFIyjKKstZvLlI4S0g;-><init>()V

    sput-object v0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ghm79HPdplFIyjKKstZvLlI4S0g;->INSTANCE:Lorg/briarproject/briar/android/conversation/-$$Lambda$ghm79HPdplFIyjKKstZvLlI4S0g;

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

    invoke-static {p1}, Lorg/briarproject/briar/android/util/UiUtils;->getContactDisplayName(Lorg/briarproject/bramble/api/contact/Contact;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
