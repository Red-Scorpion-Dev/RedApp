.class public final synthetic Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$vi2m5d1AS1rfoGB918nttS9fgEI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/conversation/ConversationActivity;

.field private final synthetic f$1:Ljava/util/Collection;

.field private final synthetic f$2:Z

.field private final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/conversation/ConversationActivity;Ljava/util/Collection;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$vi2m5d1AS1rfoGB918nttS9fgEI;->f$0:Lorg/briarproject/briar/android/conversation/ConversationActivity;

    iput-object p2, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$vi2m5d1AS1rfoGB918nttS9fgEI;->f$1:Ljava/util/Collection;

    iput-boolean p3, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$vi2m5d1AS1rfoGB918nttS9fgEI;->f$2:Z

    iput-boolean p4, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$vi2m5d1AS1rfoGB918nttS9fgEI;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$vi2m5d1AS1rfoGB918nttS9fgEI;->f$0:Lorg/briarproject/briar/android/conversation/ConversationActivity;

    iget-object v1, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$vi2m5d1AS1rfoGB918nttS9fgEI;->f$1:Ljava/util/Collection;

    iget-boolean v2, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$vi2m5d1AS1rfoGB918nttS9fgEI;->f$2:Z

    iget-boolean v3, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$vi2m5d1AS1rfoGB918nttS9fgEI;->f$3:Z

    invoke-static {v0, v1, v2, v3}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->lambda$markMessages$12(Lorg/briarproject/briar/android/conversation/ConversationActivity;Ljava/util/Collection;ZZ)V

    return-void
.end method
