.class public Lcom/miui/aod/util/NotificationController;
.super Ljava/lang/Object;
.source "NotificationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/aod/util/NotificationController$NotificationData;,
        Lcom/miui/aod/util/NotificationController$NotificationChangeListener;,
        Lcom/miui/aod/util/NotificationController$QueryTask;
    }
.end annotation


# static fields
.field public static final URI:Landroid/net/Uri;

.field private static mSmartTravelNotifications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/miui/aod/util/NotificationController;


# instance fields
.field private isRegister:Z

.field private mContext:Landroid/content/Context;

.field mNotificationChangeObserver:Landroid/database/ContentObserver;

.field private mNotificationListener:Lcom/miui/aod/util/NotificationController$NotificationChangeListener;

.field private final mNotificationService:Landroid/service/notification/NotificationListenerService;

.field private mQueryTask:Lcom/miui/aod/util/NotificationController$QueryTask;

.field private mSmartTravelNotificationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://keyguard.notification/notifications"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/aod/util/NotificationController;->URI:Landroid/net/Uri;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/aod/util/NotificationController;->mSmartTravelNotifications:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/aod/util/NotificationController;->isRegister:Z

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/miui/aod/util/NotificationController;->mSmartTravelNotificationMap:Ljava/util/Map;

    new-instance v1, Lcom/miui/aod/util/NotificationController$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/miui/aod/util/NotificationController$1;-><init>(Lcom/miui/aod/util/NotificationController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/aod/util/NotificationController;->mNotificationChangeObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/miui/aod/util/NotificationController$2;

    invoke-direct {v1, p0}, Lcom/miui/aod/util/NotificationController$2;-><init>(Lcom/miui/aod/util/NotificationController;)V

    iput-object v1, p0, Lcom/miui/aod/util/NotificationController;->mNotificationService:Landroid/service/notification/NotificationListenerService;

    iput-object p1, p0, Lcom/miui/aod/util/NotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lcom/miui/aod/util/NotificationController;->URI:Landroid/net/Uri;

    iget-object p0, p0, Lcom/miui/aod/util/NotificationController;->mNotificationChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v1, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/aod/util/NotificationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/aod/util/NotificationController;->update()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/aod/util/NotificationController;Landroid/service/notification/StatusBarNotification;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/aod/util/NotificationController;->isSmartNotificationAndNeedDisplay(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/miui/aod/util/NotificationController;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/util/NotificationController;->mSmartTravelNotificationMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/aod/util/NotificationController;)Landroid/service/notification/NotificationListenerService;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/util/NotificationController;->mNotificationService:Landroid/service/notification/NotificationListenerService;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/aod/util/NotificationController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/aod/util/NotificationController;->update(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/aod/util/NotificationController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/util/NotificationController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/miui/aod/util/NotificationController;->mSmartTravelNotifications:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/aod/util/NotificationController;Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/aod/util/NotificationController;->getNotificationPackageName(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/aod/util/NotificationController;->checkShowKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/miui/aod/util/NotificationController;)Lcom/miui/aod/util/NotificationController$NotificationChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/util/NotificationController;->mNotificationListener:Lcom/miui/aod/util/NotificationController$NotificationChangeListener;

    return-object p0
.end method

.method private static checkShowKeyguard(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "package"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "content://statusbar.notification"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "canShowOnKeyguard"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "canShowOnKeyguard"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move p1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "NotificationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error canShowKeyguard "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return p1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/aod/util/NotificationController;
    .locals 2

    const-class v0, Lcom/miui/aod/util/NotificationController;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/aod/util/NotificationController;->sInstance:Lcom/miui/aod/util/NotificationController;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/aod/util/NotificationController;

    invoke-direct {v1, p0}, Lcom/miui/aod/util/NotificationController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/aod/util/NotificationController;->sInstance:Lcom/miui/aod/util/NotificationController;

    :cond_0
    sget-object p0, Lcom/miui/aod/util/NotificationController;->sInstance:Lcom/miui/aod/util/NotificationController;

    iget-boolean p0, p0, Lcom/miui/aod/util/NotificationController;->isRegister:Z

    if-nez p0, :cond_1

    sget-object p0, Lcom/miui/aod/util/NotificationController;->sInstance:Lcom/miui/aod/util/NotificationController;

    invoke-direct {p0}, Lcom/miui/aod/util/NotificationController;->register()V

    :cond_1
    sget-object p0, Lcom/miui/aod/util/NotificationController;->sInstance:Lcom/miui/aod/util/NotificationController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getNotificationPackageName(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/aod/util/NotificationController;->getTargetPkg(Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getTargetPkg(Landroid/app/Notification;)Ljava/lang/CharSequence;
    .locals 4

    iget-object p0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "miui.targetPkg"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string p1, "miui.targetPkg"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v0, "extraNotification"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v1, "getTargetPkg"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {p1, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method private isSmartNotificationAndNeedDisplay(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    iget-object v1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/aod/util/NotificationController;->needDisplay(Landroid/app/Notification;)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    iget-object v1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    iget p1, p1, Landroid/app/Notification;->flags:I

    and-int/lit8 p1, p1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    move p1, v2

    goto :goto_0

    :cond_2
    move p1, v0

    :goto_0
    if-nez p1, :cond_4

    const-string p1, "miui.keptOnKeyguard"

    invoke-virtual {v1, p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move p1, v0

    goto :goto_2

    :cond_4
    :goto_1
    move p1, v2

    :goto_2
    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    move v0, v2

    :cond_5
    return v0

    :cond_6
    :goto_3
    return v0
.end method

.method private needDisplay(Landroid/app/Notification;)Z
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_3

    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "travel_display"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "miui.aodNotificationTip"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p0, 0x1

    :cond_2
    return p0

    :cond_3
    :goto_0
    return p0
.end method

.method private register()V
    .locals 8

    :try_start_0
    const-class v0, Landroid/service/notification/NotificationListenerService;

    const-string v1, "registerAsSystemService"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/content/ComponentName;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lcom/miui/aod/util/NotificationController;->mNotificationService:Landroid/service/notification/NotificationListenerService;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/miui/aod/util/NotificationController;->mContext:Landroid/content/Context;

    aput-object v3, v2, v5

    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v6

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "NotificationController"

    const-string v1, "registerAsSystemService success."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lcom/miui/aod/util/NotificationController;->isRegister:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "NotificationController"

    const-string v1, "registerAsSystemService failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private update()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/aod/util/NotificationController;->update(Z)V

    return-void
.end method

.method private update(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/aod/util/NotificationController;->mQueryTask:Lcom/miui/aod/util/NotificationController$QueryTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/aod/util/NotificationController;->mQueryTask:Lcom/miui/aod/util/NotificationController$QueryTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/aod/util/NotificationController$QueryTask;->cancel(Z)Z

    :cond_0
    new-instance v0, Lcom/miui/aod/util/NotificationController$QueryTask;

    invoke-direct {v0, p0, p1}, Lcom/miui/aod/util/NotificationController$QueryTask;-><init>(Lcom/miui/aod/util/NotificationController;Z)V

    iput-object v0, p0, Lcom/miui/aod/util/NotificationController;->mQueryTask:Lcom/miui/aod/util/NotificationController$QueryTask;

    iget-object p0, p0, Lcom/miui/aod/util/NotificationController;->mQueryTask:Lcom/miui/aod/util/NotificationController$QueryTask;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/aod/util/NotificationController$QueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public getSmartNotificationContent(Landroid/app/Notification;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    iget-object p0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string p1, "android.title"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "miui.aodNotificationTip"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public setListener(Lcom/miui/aod/util/NotificationController$NotificationChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/util/NotificationController;->mNotificationListener:Lcom/miui/aod/util/NotificationController$NotificationChangeListener;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/miui/aod/util/NotificationController;->update(Z)V

    return-void
.end method

.method public updateNotificationListFromMap()V
    .locals 2

    sget-object v0, Lcom/miui/aod/util/NotificationController;->mSmartTravelNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/miui/aod/util/NotificationController;->mSmartTravelNotificationMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/aod/util/NotificationController;->mSmartTravelNotificationMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/miui/aod/util/NotificationController;->mSmartTravelNotificationMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Lcom/miui/aod/util/NotificationController$3;

    invoke-direct {v1, p0}, Lcom/miui/aod/util/NotificationController$3;-><init>(Lcom/miui/aod/util/NotificationController;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    sget-object p0, Lcom/miui/aod/util/NotificationController;->mSmartTravelNotifications:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method
