.class Lcom/miui/aod/util/NotificationController$2;
.super Landroid/service/notification/NotificationListenerService;
.source "NotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/aod/util/NotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/aod/util/NotificationController;


# direct methods
.method constructor <init>(Lcom/miui/aod/util/NotificationController;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/util/NotificationController$2;->this$0:Lcom/miui/aod/util/NotificationController;

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onListenerConnected()V
    .locals 7

    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onListenerConnected()V

    iget-object v0, p0, Lcom/miui/aod/util/NotificationController$2;->this$0:Lcom/miui/aod/util/NotificationController;

    invoke-static {v0}, Lcom/miui/aod/util/NotificationController;->access$200(Lcom/miui/aod/util/NotificationController;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/miui/aod/util/NotificationController$2;->this$0:Lcom/miui/aod/util/NotificationController;

    invoke-static {v0}, Lcom/miui/aod/util/NotificationController;->access$300(Lcom/miui/aod/util/NotificationController;)Landroid/service/notification/NotificationListenerService;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/miui/aod/util/NotificationController$2;->this$0:Lcom/miui/aod/util/NotificationController;

    invoke-static {v5, v4}, Lcom/miui/aod/util/NotificationController;->access$100(Lcom/miui/aod/util/NotificationController;Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/miui/aod/util/NotificationController$2;->this$0:Lcom/miui/aod/util/NotificationController;

    invoke-static {v5}, Lcom/miui/aod/util/NotificationController;->access$200(Lcom/miui/aod/util/NotificationController;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/miui/aod/util/NotificationController$2;->this$0:Lcom/miui/aod/util/NotificationController;

    invoke-static {p0, v1}, Lcom/miui/aod/util/NotificationController;->access$400(Lcom/miui/aod/util/NotificationController;Z)V

    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    iget-object p2, p0, Lcom/miui/aod/util/NotificationController$2;->this$0:Lcom/miui/aod/util/NotificationController;

    invoke-static {p2, p1}, Lcom/miui/aod/util/NotificationController;->access$100(Lcom/miui/aod/util/NotificationController;Landroid/service/notification/StatusBarNotification;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/miui/aod/util/NotificationController$2;->this$0:Lcom/miui/aod/util/NotificationController;

    invoke-static {p0}, Lcom/miui/aod/util/NotificationController;->access$200(Lcom/miui/aod/util/NotificationController;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/miui/aod/util/NotificationController$2;->this$0:Lcom/miui/aod/util/NotificationController;

    invoke-static {p0}, Lcom/miui/aod/util/NotificationController;->access$200(Lcom/miui/aod/util/NotificationController;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/util/NotificationController$2;->this$0:Lcom/miui/aod/util/NotificationController;

    invoke-static {p0}, Lcom/miui/aod/util/NotificationController;->access$200(Lcom/miui/aod/util/NotificationController;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
