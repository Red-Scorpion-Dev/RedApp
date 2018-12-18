.class public interface abstract Lorg/briarproject/briar/api/android/AndroidNotificationManager;
.super Ljava/lang/Object;
.source "AndroidNotificationManager.java"


# static fields
.field public static final ACTION_DISMISS_REMINDER:Ljava/lang/String; = "dismissReminder"

.field public static final BLOG_CHANNEL_ID:Ljava/lang/String; = "blogs"

.field public static final BLOG_POST_NOTIFICATION_ID:I = 0x7

.field public static final BLOG_URI:Ljava/lang/String; = "content://org.briarproject.briar/blog"

.field public static final CONTACT_CHANNEL_ID:Ljava/lang/String; = "contacts"

.field public static final CONTACT_URI:Ljava/lang/String; = "content://org.briarproject.briar/contact"

.field public static final FAILURE_CHANNEL_ID:Ljava/lang/String; = "zStartupFailure"

.field public static final FAILURE_NOTIFICATION_ID:I = 0x2

.field public static final FORUM_CHANNEL_ID:Ljava/lang/String; = "forums"

.field public static final FORUM_POST_NOTIFICATION_ID:I = 0x6

.field public static final FORUM_URI:Ljava/lang/String; = "content://org.briarproject.briar/forum"

.field public static final GROUP_CHANNEL_ID:Ljava/lang/String; = "groups"

.field public static final GROUP_MESSAGE_NOTIFICATION_ID:I = 0x5

.field public static final GROUP_URI:Ljava/lang/String; = "content://org.briarproject.briar/group"

.field public static final INTRODUCTION_SUCCESS_NOTIFICATION_ID:I = 0x8

.field public static final INTRODUCTION_URI:Ljava/lang/String; = "content://org.briarproject.briar/introduction"

.field public static final ONGOING_CHANNEL_ID:Ljava/lang/String; = "zForegroundService"

.field public static final ONGOING_NOTIFICATION_ID:I = 0x1

.field public static final PREF_NOTIFY_BLOG:Ljava/lang/String; = "notifyBlogPosts"

.field public static final PREF_NOTIFY_FORUM:Ljava/lang/String; = "notifyForumPosts"

.field public static final PREF_NOTIFY_GROUP:Ljava/lang/String; = "notifyGroupMessages"

.field public static final PREF_NOTIFY_PRIVATE:Ljava/lang/String; = "notifyPrivateMessages"

.field public static final PREF_NOTIFY_RINGTONE_NAME:Ljava/lang/String; = "notifyRingtoneName"

.field public static final PREF_NOTIFY_RINGTONE_URI:Ljava/lang/String; = "notifyRingtoneUri"

.field public static final PREF_NOTIFY_SOUND:Ljava/lang/String; = "notifySound"

.field public static final PREF_NOTIFY_VIBRATION:Ljava/lang/String; = "notifyVibration"

.field public static final PRIVATE_MESSAGE_NOTIFICATION_ID:I = 0x4

.field public static final REMINDER_CHANNEL_ID:Ljava/lang/String; = "zSignInReminder"

.field public static final REMINDER_NOTIFICATION_ID:I = 0x3


# virtual methods
.method public abstract blockAllBlogPostNotifications()V
.end method

.method public abstract blockContactNotification(Lorg/briarproject/bramble/api/contact/ContactId;)V
.end method

.method public abstract blockNotification(Lorg/briarproject/bramble/api/sync/GroupId;)V
.end method

.method public abstract blockSignInNotification()V
.end method

.method public abstract clearAllBlogPostNotifications()V
.end method

.method public abstract clearAllContactNotifications()V
.end method

.method public abstract clearAllForumPostNotifications()V
.end method

.method public abstract clearAllGroupMessageNotifications()V
.end method

.method public abstract clearAllIntroductionNotifications()V
.end method

.method public abstract clearBlogPostNotification(Lorg/briarproject/bramble/api/sync/GroupId;)V
.end method

.method public abstract clearContactNotification(Lorg/briarproject/bramble/api/contact/ContactId;)V
.end method

.method public abstract clearForumPostNotification(Lorg/briarproject/bramble/api/sync/GroupId;)V
.end method

.method public abstract clearGroupMessageNotification(Lorg/briarproject/bramble/api/sync/GroupId;)V
.end method

.method public abstract clearSignInNotification()V
.end method

.method public abstract getForegroundNotification()Landroid/app/Notification;
.end method

.method public abstract showSignInNotification()V
.end method

.method public abstract unblockAllBlogPostNotifications()V
.end method

.method public abstract unblockContactNotification(Lorg/briarproject/bramble/api/contact/ContactId;)V
.end method

.method public abstract unblockNotification(Lorg/briarproject/bramble/api/sync/GroupId;)V
.end method

.method public abstract updateForegroundNotification(Z)V
.end method
