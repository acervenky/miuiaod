.class Lcom/xiaomi/stat/b/b;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/xiaomi/stat/b/a;


# direct methods
.method constructor <init>(Lcom/xiaomi/stat/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/stat/b/b;->a:Lcom/xiaomi/stat/b/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    :try_start_0
    iget-object p2, p0, Lcom/xiaomi/stat/b/b;->a:Lcom/xiaomi/stat/b/a;

    invoke-static {p2}, Lcom/xiaomi/stat/b/a;->a(Lcom/xiaomi/stat/b/a;)I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/stat/b/b;->a:Lcom/xiaomi/stat/b/a;

    invoke-static {p0}, Lcom/xiaomi/stat/b/a;->b(Lcom/xiaomi/stat/b/a;)Landroid/content/BroadcastReceiver;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/stat/d/l;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/xiaomi/stat/b/e;->a()Lcom/xiaomi/stat/b/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/stat/b/e;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lcom/xiaomi/stat/b/c;

    invoke-direct {p2, p0}, Lcom/xiaomi/stat/b/c;-><init>(Lcom/xiaomi/stat/b/b;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ConfigManager"

    const-string p2, "mNetReceiver exception"

    invoke-static {p1, p2, p0}, Lcom/xiaomi/stat/d/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
