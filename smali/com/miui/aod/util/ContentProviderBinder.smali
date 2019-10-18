.class public Lcom/miui/aod/util/ContentProviderBinder;
.super Ljava/lang/Object;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/aod/util/ContentProviderBinder$ChangeObserver;,
        Lcom/miui/aod/util/ContentProviderBinder$Builder;,
        Lcom/miui/aod/util/ContentProviderBinder$QueryCompleteListener;
    }
.end annotation


# instance fields
.field public mChangeObserver:Lcom/miui/aod/util/ContentProviderBinder$ChangeObserver;

.field protected mColumns:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mQueryCompletedListener:Lcom/miui/aod/util/ContentProviderBinder$QueryCompleteListener;

.field private mQueryHandler:Lcom/miui/aod/util/QueryHandler;

.field public mUri:Landroid/net/Uri;

.field protected mWhere:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/aod/util/ContentProviderBinder$ChangeObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/aod/util/ContentProviderBinder$ChangeObserver;-><init>(Lcom/miui/aod/util/ContentProviderBinder;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/aod/util/ContentProviderBinder;->mChangeObserver:Lcom/miui/aod/util/ContentProviderBinder$ChangeObserver;

    iput-object p1, p0, Lcom/miui/aod/util/ContentProviderBinder;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/miui/aod/util/ContentProviderBinder$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/aod/util/ContentProviderBinder$1;-><init>(Lcom/miui/aod/util/ContentProviderBinder;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/aod/util/ContentProviderBinder;->mQueryHandler:Lcom/miui/aod/util/QueryHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/aod/util/ContentProviderBinder;Landroid/database/Cursor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/aod/util/ContentProviderBinder;->onQueryComplete(Landroid/database/Cursor;)V

    return-void
.end method

.method private onQueryComplete(Landroid/database/Cursor;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v0, "ContentProviderBinder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "num="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; muri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/aod/util/ContentProviderBinder;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v4, v1

    move v1, v0

    move-object v0, v4

    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_2

    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :goto_1
    if-eqz p1, :cond_0

    :try_start_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_2
    throw p0

    :cond_1
    move v1, v0

    :goto_3
    if-eqz p1, :cond_2

    :try_start_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_2
    :goto_4
    iget-object p1, p0, Lcom/miui/aod/util/ContentProviderBinder;->mQueryCompletedListener:Lcom/miui/aod/util/ContentProviderBinder$QueryCompleteListener;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/aod/util/ContentProviderBinder;->mUri:Landroid/net/Uri;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/aod/util/ContentProviderBinder;->mQueryCompletedListener:Lcom/miui/aod/util/ContentProviderBinder$QueryCompleteListener;

    iget-object p0, p0, Lcom/miui/aod/util/ContentProviderBinder;->mUri:Landroid/net/Uri;

    invoke-interface {p1, p0, v1}, Lcom/miui/aod/util/ContentProviderBinder$QueryCompleteListener;->onQueryCompleted(Landroid/net/Uri;I)V

    :cond_3
    return-void
.end method

.method private registerObserver(Z)V
    .locals 3

    iget-object v0, p0, Lcom/miui/aod/util/ContentProviderBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/aod/util/ContentProviderBinder;->mChangeObserver:Lcom/miui/aod/util/ContentProviderBinder$ChangeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/aod/util/ContentProviderBinder;->mUri:Landroid/net/Uri;

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/miui/aod/util/ContentProviderBinder;->mUri:Landroid/net/Uri;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/miui/aod/util/ContentProviderBinder;->mChangeObserver:Lcom/miui/aod/util/ContentProviderBinder$ChangeObserver;

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ContentProviderBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  uri:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/aod/util/ContentProviderBinder;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/aod/util/ContentProviderBinder;->registerObserver(Z)V

    return-void
.end method

.method public init()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/aod/util/ContentProviderBinder;->registerObserver(Z)V

    invoke-virtual {p0}, Lcom/miui/aod/util/ContentProviderBinder;->startQuery()V

    return-void
.end method

.method public setQueryCompleteListener(Lcom/miui/aod/util/ContentProviderBinder$QueryCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/util/ContentProviderBinder;->mQueryCompletedListener:Lcom/miui/aod/util/ContentProviderBinder$QueryCompleteListener;

    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/util/ContentProviderBinder;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public startQuery()V
    .locals 10

    iget-object v0, p0, Lcom/miui/aod/util/ContentProviderBinder;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    const-string p0, "ContentProviderBinder"

    const-string v0, "startQuery  uri == null"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/aod/Utils;->isBootCompleted()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/aod/util/ContentProviderBinder;->mQueryHandler:Lcom/miui/aod/util/QueryHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/miui/aod/util/QueryHandler;->cancelOperation(I)V

    iget-object v7, p0, Lcom/miui/aod/util/ContentProviderBinder;->mWhere:Ljava/lang/String;

    const-string v0, "ContentProviderBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start query: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/aod/util/ContentProviderBinder;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n where:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/miui/aod/util/ContentProviderBinder;->mQueryHandler:Lcom/miui/aod/util/QueryHandler;

    const/16 v3, 0x64

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/aod/util/ContentProviderBinder;->mUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/miui/aod/util/ContentProviderBinder;->mColumns:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/miui/aod/util/QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
