.class public final synthetic Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$YrFNfEuaeTiiYd0iCDWHzhQXax0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/conversation/ConversationActivity;

.field private final synthetic f$1:I

.field private final synthetic f$2:Ljava/util/Collection;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/conversation/ConversationActivity;ILjava/util/Collection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$YrFNfEuaeTiiYd0iCDWHzhQXax0;->f$0:Lorg/briarproject/briar/android/conversation/ConversationActivity;

    iput p2, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$YrFNfEuaeTiiYd0iCDWHzhQXax0;->f$1:I

    iput-object p3, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$YrFNfEuaeTiiYd0iCDWHzhQXax0;->f$2:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$YrFNfEuaeTiiYd0iCDWHzhQXax0;->f$0:Lorg/briarproject/briar/android/conversation/ConversationActivity;

    iget v1, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$YrFNfEuaeTiiYd0iCDWHzhQXax0;->f$1:I

    iget-object v2, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$YrFNfEuaeTiiYd0iCDWHzhQXax0;->f$2:Ljava/util/Collection;

    invoke-static {v0, v1, v2}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->lambda$displayMessages$6(Lorg/briarproject/briar/android/conversation/ConversationActivity;ILjava/util/Collection;)V

    return-void
.end method
