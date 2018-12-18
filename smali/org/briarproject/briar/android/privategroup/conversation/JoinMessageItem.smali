.class Lorg/briarproject/briar/android/privategroup/conversation/JoinMessageItem;
.super Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageItem;
.source "JoinMessageItem.java"


# instance fields
.field private final isInitial:Z

.field private visibility:Lorg/briarproject/briar/api/privategroup/Visibility;


# direct methods
.method constructor <init>(Lorg/briarproject/briar/api/privategroup/JoinMessageHeader;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageItem;-><init>(Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/JoinMessageHeader;->getVisibility()Lorg/briarproject/briar/api/privategroup/Visibility;

    move-result-object p2

    iput-object p2, p0, Lorg/briarproject/briar/android/privategroup/conversation/JoinMessageItem;->visibility:Lorg/briarproject/briar/api/privategroup/Visibility;

    .line 22
    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/JoinMessageHeader;->isInitial()Z

    move-result p1

    iput-boolean p1, p0, Lorg/briarproject/briar/android/privategroup/conversation/JoinMessageItem;->isInitial:Z

    return-void
.end method


# virtual methods
.method public getLayout()I
    .locals 1

    const v0, 0x7f0c0066

    return v0
.end method

.method public getLevel()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getVisibility()Lorg/briarproject/briar/api/privategroup/Visibility;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/JoinMessageItem;->visibility:Lorg/briarproject/briar/api/privategroup/Visibility;

    return-object v0
.end method

.method isInitial()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/JoinMessageItem;->isInitial:Z

    return v0
.end method

.method setVisibility(Lorg/briarproject/briar/api/privategroup/Visibility;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lorg/briarproject/briar/android/privategroup/conversation/JoinMessageItem;->visibility:Lorg/briarproject/briar/api/privategroup/Visibility;

    return-void
.end method
