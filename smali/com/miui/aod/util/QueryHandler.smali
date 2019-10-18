.class public abstract Lcom/miui/aod/util/QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "QueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/aod/util/QueryHandler$CatchingWorkerHandler;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1

    new-instance v0, Lcom/miui/aod/util/QueryHandler$CatchingWorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/miui/aod/util/QueryHandler$CatchingWorkerHandler;-><init>(Lcom/miui/aod/util/QueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method
