.class public Lorg/briarproject/briar/messaging/MessagingModule$EagerSingletons;
.super Ljava/lang/Object;
.source "MessagingModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/briar/messaging/MessagingModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EagerSingletons"
.end annotation


# instance fields
.field conversationManager:Lorg/briarproject/briar/api/conversation/ConversationManager;

.field messagingManager:Lorg/briarproject/briar/api/messaging/MessagingManager;

.field privateMessageValidator:Lorg/briarproject/briar/messaging/PrivateMessageValidator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
