.class final enum Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;
.super Ljava/lang/Enum;
.source "ConversationRequestItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/briar/android/conversation/ConversationRequestItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;

.field public static final enum BLOG:Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;

.field public static final enum FORUM:Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;

.field public static final enum GROUP:Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;

.field public static final enum INTRODUCTION:Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 19
    new-instance v0, Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;

    const-string v1, "INTRODUCTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;->INTRODUCTION:Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;

    new-instance v0, Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;

    const-string v1, "FORUM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;->FORUM:Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;

    new-instance v0, Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;

    const-string v1, "BLOG"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;->BLOG:Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;

    new-instance v0, Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;

    const-string v1, "GROUP"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;->GROUP:Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;

    sget-object v1, Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;->INTRODUCTION:Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;->FORUM:Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;->BLOG:Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;->GROUP:Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;

    aput-object v1, v0, v5

    sput-object v0, Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;->$VALUES:[Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;
    .locals 1

    .line 19
    const-class v0, Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;

    return-object p0
.end method

.method public static values()[Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;
    .locals 1

    .line 19
    sget-object v0, Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;->$VALUES:[Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;

    invoke-virtual {v0}, [Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;

    return-object v0
.end method
