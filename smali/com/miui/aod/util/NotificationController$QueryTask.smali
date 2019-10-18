.class public Lcom/miui/aod/util/NotificationController$QueryTask;
.super Landroid/os/AsyncTask;
.source "NotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/aod/util/NotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QueryTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList<",
        "Lcom/miui/aod/util/NotificationController$NotificationData;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mNeedAnimate:Z

.field final synthetic this$0:Lcom/miui/aod/util/NotificationController;


# direct methods
.method public constructor <init>(Lcom/miui/aod/util/NotificationController;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/util/NotificationController$QueryTask;->this$0:Lcom/miui/aod/util/NotificationController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-boolean p2, p0, Lcom/miui/aod/util/NotificationController$QueryTask;->mNeedAnimate:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/aod/util/NotificationController$QueryTask;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/miui/aod/util/NotificationController$NotificationData;",
            ">;"
        }
    .end annotation

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/miui/aod/util/NotificationController$QueryTask;->this$0:Lcom/miui/aod/util/NotificationController;

    invoke-static {v1}, Lcom/miui/aod/util/NotificationController;->access$500(Lcom/miui/aod/util/NotificationController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/aod/util/NotificationController;->URI:Landroid/net/Uri;

    const-string v1, "pkg"

    const-string v4, "title"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/miui/aod/util/NotificationController$NotificationData;

    iget-object v3, p0, Lcom/miui/aod/util/NotificationController$QueryTask;->this$0:Lcom/miui/aod/util/NotificationController;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/aod/util/NotificationController$NotificationData;-><init>(Lcom/miui/aod/util/NotificationController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    const-string v2, "NotificationController"

    const-string v3, "query notification fail"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/miui/aod/util/NotificationController$QueryTask;->this$0:Lcom/miui/aod/util/NotificationController;

    invoke-virtual {v1}, Lcom/miui/aod/util/NotificationController;->updateNotificationListFromMap()V

    invoke-static {}, Lcom/miui/aod/util/NotificationController;->access$600()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    new-instance v4, Lcom/miui/aod/util/NotificationController$NotificationData;

    iget-object v5, p0, Lcom/miui/aod/util/NotificationController$QueryTask;->this$0:Lcom/miui/aod/util/NotificationController;

    iget-object v6, p0, Lcom/miui/aod/util/NotificationController$QueryTask;->this$0:Lcom/miui/aod/util/NotificationController;

    invoke-static {v6, v2}, Lcom/miui/aod/util/NotificationController;->access$700(Lcom/miui/aod/util/NotificationController;Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/miui/aod/util/NotificationController$QueryTask;->this$0:Lcom/miui/aod/util/NotificationController;

    invoke-virtual {v6, v3}, Lcom/miui/aod/util/NotificationController;->getSmartNotificationContent(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v2, v6}, Lcom/miui/aod/util/NotificationController$NotificationData;-><init>(Lcom/miui/aod/util/NotificationController;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/aod/util/NotificationController$QueryTask;->this$0:Lcom/miui/aod/util/NotificationController;

    invoke-static {v2}, Lcom/miui/aod/util/NotificationController;->access$500(Lcom/miui/aod/util/NotificationController;)Landroid/content/Context;

    move-result-object v2

    iget-object v5, v4, Lcom/miui/aod/util/NotificationController$NotificationData;->mPackageName:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/miui/aod/util/NotificationController;->access$800(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    iput-object v2, v4, Lcom/miui/aod/util/NotificationController$NotificationData;->mIcon:Landroid/graphics/drawable/Icon;

    iput-boolean v0, v4, Lcom/miui/aod/util/NotificationController$NotificationData;->mTravelDisplay:Z

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/miui/aod/util/NotificationController$QueryTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/aod/util/NotificationController$NotificationData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/aod/util/NotificationController$QueryTask;->this$0:Lcom/miui/aod/util/NotificationController;

    invoke-static {v0}, Lcom/miui/aod/util/NotificationController;->access$900(Lcom/miui/aod/util/NotificationController;)Lcom/miui/aod/util/NotificationController$NotificationChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/aod/util/NotificationController$QueryTask;->this$0:Lcom/miui/aod/util/NotificationController;

    invoke-static {v0}, Lcom/miui/aod/util/NotificationController;->access$900(Lcom/miui/aod/util/NotificationController;)Lcom/miui/aod/util/NotificationController$NotificationChangeListener;

    move-result-object v0

    iget-boolean p0, p0, Lcom/miui/aod/util/NotificationController$QueryTask;->mNeedAnimate:Z

    invoke-interface {v0, p1, p0}, Lcom/miui/aod/util/NotificationController$NotificationChangeListener;->onUpdate(Ljava/util/ArrayList;Z)V

    :cond_0
    return-void
.end method
